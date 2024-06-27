EntityModule, LoggerModule, EventsModule, CallbackModule, FunctionsModule, PlayerModule = nil

local _Ready = false
AddEventHandler('Modules/client/ready', function()
    if not _Ready then
        _Ready = true
    end
    TriggerEvent('Modules/client/request-dependencies', {
        'Player',
        'Events',
        'Entity',
        'Logger',
        'Vehicle',
        'Callback',
        'Functions',
    }, function(Succeeded)
        if not Succeeded then return end
        PlayerModule = exports['mercy-base']:FetchModule('Player')
        EntityModule = exports['mercy-base']:FetchModule("Entity")
        LoggerModule = exports['mercy-base']:FetchModule('Logger')
        VehicleModule = exports['mercy-base']:FetchModule('Vehicle')
        EventsModule = exports['mercy-base']:FetchModule('Events')
        CallbackModule = exports['mercy-base']:FetchModule('Callback')
        FunctionsModule = exports['mercy-base']:FetchModule('Functions')
    end)
end)


RegisterCommand("openbennys", function() 
    testshit()
end)


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

function testshit()
    local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)

    if IsPedInAnyVehicle(PlayerPedId()) then
        SetNuiFocus(true, true)
        FreezeEntityPosition(playerVeh, true)
        SetVehicleOnGroundProperly(playerVeh)

        BuildMenu(playerVeh)

        -- exports['mercy-ui']:SendUIMessage('Hud', 'SetAppVisiblity', {
        --     Visible = false,
        -- })

        DisplayRadar(false)

        else 
            exports['mercy-ui']:Notify("Preferences", "Not in a vehicle!", "error", 5000)
        end
    end




function CloseMenu()
    local playerVeh = GetVehiclePedIsIn(PlayerPedId(), false)

    SetNuiFocus(false, false)
    RenderScriptCams(false, false, 0, true, true)
    DestroyCam(customCamMain, false)
    FreezeEntityPosition(playerVeh, false)
    DisplayRadar(true)
  
    exports['mercy-ui']:SendUIMessage('Hud', 'SetAppVisiblity', {
        Visible = true,
    })
    SendNUIMessage({
        Action = 'SetVisibility',
        Bool = false,
    })

    SendNUIMessage({
        Action = 'emptyitem',
    })
  end




---

function Round(Value, Decimals)
    return Decimals and math.floor((Value * 10 ^ Decimals) + 0.5) / (10 ^ Decimals) or math.floor(Value + 0.5)
end

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

function GetIsInBennysZone()
    return IsInBennysZone
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

function CanOpenBennys(Authorized)
    if not Authorized then return true end

    if Authorized.Job then
        local MyJob = PlayerModule.GetPlayerData().Job.Name
        for k, Job in pairs(Authorized.Job) do
            if Job == MyJob then
                return true
            end
        end
    end

    if Authorized.Business then
        for k, Business in pairs(Authorized.Business) do
            if exports['mercy-business']:IsPlayerInBusiness(Business) then
                return true
            end
        end
    end

    return false
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


