
local SellectMode = ""
local SellectItem = ""
local colorstyp = ""
local oldcolor = 1
local oldcolorextra = 1
local oldplate = 1
local oldneon = 1
local oldwtype = 1
local vehicleMods = {}
local oldtint = 1
local oldsmoke = 1
local SellectItemPrice = 0
local typer = "main"

local customCamMain, vehicle = nil, nil

local radius = 5.0
local angle = 0.0
local verticalOffset = 3.0


function BuildMenu(Vehicle)
    vehicle = Vehicle

    local vehPos = GetEntityCoords(vehicle)
    local camPos = GetOffsetFromEntityInWorldCoords(vehicle, -2.0, 5.0, 3.0)

    customCamMain = CreateCamWithParams('DEFAULT_SCRIPTED_CAMERA', camPos.x, camPos.y, camPos.z, -35.0, 0.0, 0.0, GetGameplayCamFov(), false, 2)
    PointCamAtEntity(customCamMain, vehicle)

    SetNuiFocus(true, true)
    SetCamActive(customCamMain, true)
    RenderScriptCams(true, true, 500, true, true)

    SendNUIMessage({
        Action = 'SetVisibility',
        Bool = true,
    })

    AddMods()
end



-- CAMERA

RegisterNUICallback('move_camera', function(data, cb)
  if data.angle then
    angle = angle + data.angle
  end
  if data.radius then
    radius = math.max(Config.CameraMovement.radiusMin, math.min(Config.CameraMovement.radiusMax, radius + data.radius))
  end
  if data.vertical then
    verticalOffset = math.max(Config.CameraMovement.verticalMin, math.min(Config.CameraMovement.verticalMax, verticalOffset + data.vertical))
  end
  local vehPos = GetEntityCoords(vehicle)
  local targetCamPos = CalculateCameraPosition(vehPos, radius, angle, verticalOffset)
  SmoothMoveCamera(targetCamPos)
end)

function CalculateCameraPosition(vehPos, radius, angle, verticalOffset)
  local offsetX = radius * math.cos(math.rad(angle))
  local offsetY = radius * math.sin(math.rad(angle))
  local camPos = vector3(vehPos.x + offsetX, vehPos.y + offsetY, vehPos.z + verticalOffset)

  local hit, hitCoords, surfaceNormal, entityHit = RaycastFromVehicleToPoint(vehPos, camPos)
  if hit then
    camPos = hitCoords
  end

  return camPos
end

function RaycastFromVehicleToPoint(vehPos, camPos)
  local rayHandle = StartShapeTestRay(vehPos.x, vehPos.y, vehPos.z, camPos.x, camPos.y, camPos.z, -1, vehicle, 7)
  local _, hit, endCoords, surfaceNormal, entityHit = GetRaycastResult(rayHandle)
  return hit, endCoords, surfaceNormal, entityHit
end

function UpdateCameraPosition()
  local vehPos = GetEntityCoords(vehicle)
  local camPos = CalculateCameraPosition(vehPos, radius, angle, verticalOffset)
  SetCamCoord(customCamMain, camPos.x, camPos.y, camPos.z)
  PointCamAtEntity(customCamMain, vehicle)
end

function SmoothMoveCamera(targetCamPos)
  local startPos = GetCamCoord(customCamMain)
  local endPos = targetCamPos
  local duration = 550 -- duration in milliseconds

  local elapsedTime = 0
  while elapsedTime < duration do
    local delta = elapsedTime / duration
    local newPos = vector3(
      startPos.x + (endPos.x - startPos.x) * delta,
      startPos.y + (endPos.y - startPos.y) * delta,
      startPos.z + (endPos.z - startPos.z) * delta
    )
    SetCamCoord(customCamMain, newPos.x, newPos.y, newPos.z)
    PointCamAtEntity(customCamMain, vehicle)

    Wait(0)
    elapsedTime = elapsedTime + GetFrameTime() * 1000
  end
  SetCamCoord(customCamMain, endPos.x, endPos.y, endPos.z)
  PointCamAtEntity(customCamMain, vehicle)
end


RegisterNUICallback('close', function(data, cb)
  CloseMenu()
end)


function AddMods()
    local playerPed = PlayerPedId()
    local playerVeh = GetVehiclePedIsIn(playerPed, false)
    SetVehicleModKit(playerVeh,0)

    for k, v in pairs(Config.ModsList) do
        if Config.DetailMods[k] == nil then 
            SendNUIMessage({
                    Action = "addMods",
                    Id = k,
                    Description = v.desc,
                    Label = v.name,
                    Img = v.img,
                })
        else
            local modCount = GetNumVehicleMods(playerVeh, Config.DetailMods[k].modtype)
            if modCount > 1 then
                SendNUIMessage({
                    Action = "addMods",
                    Id = k,
                    Description = v.desc,
                    Label = Config.ModsList[k].name,
                    Img = Config.ModsList[k].img,
                })
            end
        end
    end
end


RegisterNUICallback("SellectId", function(Data)
    local id = Data.id
    SellectMode = id
    SendNUIMessage({Action = "emptyitem"})
    local typer = "main"
    
    if id == "Colors" then 
        SendNUIMessage({Action = "emptyall"})
        for k, v in pairs(Config.ColorsType) do
            typer = "alt"
            SendNUIMessage({
                Action = "addMods",
                Label = v.label,
                Img = v.img,
                Id = k,
            })
        end
    elseif id == "Plates" then 
        for k, v in pairs(Config.Plates) do
            local select = false 
            if v.plateindex == oldplate then 
                select = true
            end
            SendNUIMessage({
                Action = "addItems",
                Label = v.name,
                Img = Config.ModsList["Plates"].img,
                Price = v.price,
                Id = k,
                select = select,
            })
        end
    elseif Config.ModsList[id] then
        local modInfo = Config.ModsList[id]
        local modNumber = modInfo.modNumber
        local numMods = GetNumVehicleMods(GetVehiclePedIsIn(PlayerPedId(), false), modNumber)
        
        
        for i = 0, numMods - 1 do
            local modName = "Part" .. " " .. (i + 1)
            local select = (GetVehicleMod(GetVehiclePedIsIn(PlayerPedId(), false), modNumber) == i)
            local price = GetModPrice(modNumber, i)
                
            SendNUIMessage({
                Action = "addItems",
                Label = modName,
                Description = modInfo.desc,
                Img = modInfo.img,
                Price = price,
                Id = i,
                select = select,
            })
        end
    elseif id == "Neons" then
        for k, v in pairs(Config.Neons) do
            local select = false 
            if json.encode(v.neon) == "[" .. oldneon[1] .. "," .. oldneon[2] .. "," .. oldneon[3] .. "]" then 
                select = true
            end
            SendNUIMessage({
                Action = "addItems",
                Label = v.name,
                Img = Config.ModsList["Neons"].img,
                Price = v.price,
                Id = k,
                select = select,
            })
        end
    elseif id == "Wheels" then
        typer = "main"
        SendNUIMessage({Action = "emptyall"})
        for k, v in pairs(Config.WheelsType) do
            typer = "alt"
            SendNUIMessage({
                Action = "addMods",
                Label = v.name,
                Img = v.img,
                Id = k,
            })
        end
    elseif id == "wheelSmoke" then 
        typer = "alt"
        for k, v in pairs(Config.Wheel.wheelaccessories) do
            local select = false 
            if json.encode(v.smokecolor) == "[" .. oldsmoke[1] .. "," .. oldsmoke[2] .. "," .. oldsmoke[3] .. "]" then 
                select = true
            end
            SendNUIMessage({
                Action = "addItems",
                Label = v.name,
                Img = Config.ModsList["Wheels"].img,
                Price = v.price,
                Id = k,
                select = select,
            })
        end
    elseif id == "accessories" then 
        typer = "alt"
        SendNUIMessage({Action = "emptyall"})
        for k, v in pairs(Config.Wheel_whType) do
            typer = "altalt"
            SendNUIMessage({
                Action = "addMods",
                Label = v.name,
                Img = v.img,
                Id = k,
            })
        end
    elseif id == "frontwheel" or id == "backwheel" or id == "sportwheels" or id == "suvwheels" or id == "offroadwheels" or id == "tunerwheels" or id == "highendwheels" or id == "lowriderwheels" or id == "musclewheels" then
        typer = "altalt"
        for k, v in pairs(Config.Wheel.Wheel[id]) do
            local select = false 
            if v.mod == GetModStatus(23) and v.wtype == oldwtype then 
                select = true
            end
            SendNUIMessage({
                Action = "addItems",
                Label = v.name,
                Img = Config.Wheel_whType[id].img,
                Price = v.price,
                Id = k,
                select = select,
            })
        end
    elseif id == "wheelcolor" then
        typer = "alt"
        for k, v in pairs(Config.Colors) do
            SendNUIMessage({
                Action = "addItems",
                Label = v.name,
                Img = Config.ColorsMenu["ColorsC"].img,
                Price = Config.ColorsMenu["ColorsC"].price,
                Id = k,
            })
        end
    end
end)



RegisterNUICallback("SellectItem", function (data)
    id = data.id 
    print(id)
    SellectItem = id
    local playerPed = PlayerPedId()
    local playerVeh = GetVehiclePedIsIn(playerPed, false)
    oldcolorx = table.pack(GetVehicleColours(playerVeh))
    repair = "no"
    -- if Config.SoundEffect then 
    --     PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
    -- end
    if SellectMode == "MatteColors" or SellectMode == "MetalColors" or SellectMode == "ColorsC" then 
        if colorstyp == "PrimaryColor" then 
            if SellectMode == "ColorsC" then 
                SellectItemPrice = Config.ColorsMenu["ColorsC"].price
                SetVehicleColours(playerVeh,Config["Colors"][tonumber(SellectItem)].colorindex,oldcolor[2])
            else 
                SellectItemPrice = Config.ColorsMenu[SellectMode].price
                SetVehicleColours(playerVeh,Config[SellectMode][tonumber(SellectItem)].colorindex,oldcolor[2])
            end
        elseif colorstyp == "SecondaryColor" then
            if SellectMode == "ColorsC" then 
                SellectItemPrice = Config.ColorsMenu["ColorsC"].price
                SetVehicleColours(playerVeh,oldcolorx[1] ,Config["Colors"][tonumber(SellectItem)].colorindex)
            else 
                SellectItemPrice = Config.ColorsMenu[SellectMode].price
                SetVehicleColours(playerVeh,oldcolorx[1] ,Config[SellectMode][tonumber(SellectItem)].colorindex)
            end
        else
            if SellectMode == "ColorsC" then 
                SellectItemPrice = Config.ColorsMenu["ColorsC"].price
                SetVehicleExtraColours(playerVeh, Config["Colors"][tonumber(SellectItem)].colorindex, Config["Colors"][tonumber(SellectItem)].colorindex)
            else 
                SellectItemPrice = Config.ColorsMenu[SellectMode].price
                SetVehicleExtraColours(playerVeh, Config[SellectMode][tonumber(SellectItem)].colorindex, Config[SellectMode][tonumber(SellectItem)].colorindex)
            end
        end
    elseif SellectMode == "Horns" then
        SellectItemPrice = Config.Horns[tonumber(id)].price
        SetVehicleMod(playerVeh, 14, Config.Horns[tonumber(id)].mod) 
        OverrideVehHorn(playerVeh,false,Config.Horns[tonumber(id)].mod)
        StartVehicleHorn(playerVeh, 3000, GetHashKey("HELDDOWN"), true)
        notify(Config.Langs["ChangeHorns"])
    elseif SellectItem == "Repair" or SellectItem == "AdvancedRepair" or SellectItem == "Clean" then 
        SellectItemPrice = Config.RepairMenu[SellectItem].price 
    elseif SellectMode == "Plates" then
        SellectItemPrice = Config.Plates[tonumber(id)].price
        SetVehicleNumberPlateTextIndex(playerVeh, Config.Plates[tonumber(id)].plateindex)
    elseif SellectMode == "Neons" then 
        SellectItemPrice = Config.Neons[tonumber(id)].price
        for i = 0, 3 do
            SetVehicleNeonLightEnabled(playerVeh, i, true)
        end
        if json.encode(Config.Neons[tonumber(id)].neon) == "[0,0,0]" then 
            SetVehicleNeonLightsColour(playerVeh,255,255,255)
            for i = 0, 3 do
                SetVehicleNeonLightEnabled(playerVeh, i, false)
            end
        else 
            SetVehicleNeonLightsColour(playerVeh,Config.Neons[tonumber(id)].neon[1],Config.Neons[tonumber(id)].neon[2],Config.Neons[tonumber(id)].neon[3])
        end
    elseif SellectMode == "WindowTint" then
        SellectItemPrice = Config.Windowtint[tonumber(id)].price
        SetVehicleWindowTint(playerVeh, Config.Windowtint[tonumber(id)].tint)
    elseif SellectMode == "Suspension" then 
        SellectItemPrice = Config.Suspensions[tonumber(id)].price 
        SetVehicleMod(playerVeh, 15, Config.Suspensions[tonumber(id)].mod)
    elseif SellectMode == "Brakes" then 
        SellectItemPrice = Config.Brakes[tonumber(id)].price 
        SetVehicleMod(playerVeh, 12, Config.Brakes[tonumber(id)].mod)
    elseif SellectMode == "Engine" then
        SellectItemPrice = Config.Engine[tonumber(id)].price 
        SetVehicleMod(playerVeh, 11, Config.Engine[tonumber(id)].mod)
    elseif SellectMode == "Transmission" then
        SellectItemPrice = Config.Transmission[tonumber(id)].price 
        SetVehicleMod(playerVeh, 13, Config.Transmission[tonumber(id)].mod)
    elseif SellectMode == "wheelSmoke" then 
        SellectItemPrice = Config.Wheel.wheelaccessories[tonumber(id)].price 
        ToggleVehicleMod(playerVeh,20,true)
        SetVehicleTyreSmokeColor(playerVeh, Config.Wheel.wheelaccessories[tonumber(id)].smokecolor[1], Config.Wheel.wheelaccessories[tonumber(id)].smokecolor[2], Config.Wheel.wheelaccessories[tonumber(id)].smokecolor[3])
    elseif SellectMode == "frontwheel" or SellectMode == "backwheel" or SellectMode == "sportwheels" or SellectMode == "suvwheels" or SellectMode == "offroadwheels" or SellectMode == "tunerwheels" or SellectMode == "highendwheels" or SellectMode == "lowriderwheels" or SellectMode == "musclewheels" then
        SellectItemPrice = Config.Wheel.Wheel[SellectMode][tonumber(id)].price 
        SetVehicleWheelType(playerVeh,Config.Wheel.Wheel[SellectMode][tonumber(id)].wtype)
        SetVehicleMod(playerVeh,23,Config.Wheel.Wheel[SellectMode][tonumber(id)].mod)
    elseif Config.DetailMods[SellectMode] then 
        SellectItemPrice = Config.DetailMods[SellectMode].startprice + (tonumber(id) * Config.DetailMods[SellectMode].increaseby)
        SetVehicleMod(playerVeh, Config.DetailMods[SellectMode].modtype, tonumber(id))
    end
    UpdatePrice()
end)

function GetModStatus(modType)
    return vehicleMods[modType]
end

