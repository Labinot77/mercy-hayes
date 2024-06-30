QBCore = exports['qb-core']:GetCoreObject()


RegisterCommand("openbennys", function() 
    testshit()
end)

function testshit()
    local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)

    if IsPedInAnyVehicle(PlayerPedId()) then
        SetNuiFocus(true, true)
        FreezeEntityPosition(playerVeh, true)
        SetVehicleOnGroundProperly(playerVeh)

        BuildMenu(playerVeh)

        DisplayRadar(false)

        else 
            print("Not in a vehicle")
        end
    end

function CloseMenu()
    local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)

    SetNuiFocus(false, false)
    RenderScriptCams(false, false, 0, true, true)
    DestroyCam(customCamMain, false)
    FreezeEntityPosition(playerVeh, false)
    DisplayRadar(true)
  

    SendNUIMessage({
        Action = 'SetVisibility',
        Bool = false,
    })

    SendNUIMessage({
        Action = 'emptyitem',
    })
  end


---


function GetModPrice(Name, ModIndex)
    local Multiplier = 1.0
    if IsEmployedAtMechanic then Multiplier = 0.7 end

    local Price = nil
    if ModIndex ~= nil and type(Config.Prices[Name]) == 'table' then
        Price = Config.Prices[Name][ModIndex] ~= nil and Config.Prices[Name][ModIndex] or Config.Prices[Name][#Config.Prices[Name]]
    elseif Config.Prices[Name] then
        Price = Config.Prices[Name]
    end

    return (Price ~= nil and math.floor(Price * Multiplier) or nil)
end


function CloseBennys(Data, Cb)
    InBennys, IsAdmin = false, false
    local Vehicle = GetVehiclePedIsUsing(PlayerPedId())
    FreezeEntityPosition(Vehicle, false)
    SetNuiFocusKeepInput(false)
    SetNuiFocus(false, false)
    
    SendNUIMessage({
        Action = 'SetVisibility',
        Bool = false,
    })
end


function IsBennysGov(Authorized)
    if not Authorized then return false end

    if Authorized.Job then
        for k, Job in pairs(Authorized.Job) do
            if Job == "police" or Job == "ems" then
                return true
            end
        end
    end

    return false
end


