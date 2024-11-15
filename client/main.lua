local completedTasks = 0

-- Spawn Ped
CreateThread(function()
    local model = Config.PedModel
    RequestModel(model)
    while not HasModelLoaded(model) do Wait(0) end
    local ped = CreatePed(4, model, Config.PedCoords.x, Config.PedCoords.y, Config.PedCoords.z, Config.PedCoords.w, false, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)

    exports.ox_target:addLocalEntity(ped, {
        {
            name = 'start_salvage',
            event = 'avid-salvage:startJob',
            icon = 'fa-solid fa-tools',
            label = 'Start Salvage Job'
        }
    })
end)

-- Start Job
RegisterNetEvent('avid-salvage:startJob', function()
    if completedTasks >= Config.TasksRequired then
        TriggerEvent('ox_lib:notify', {type = 'inform', description = 'You have already completed this job.'})
        return
    end

    for _, zone in ipairs(Config.SalvageZones) do
        local sphere = lib.zones.sphere({
            coords = zone,
            radius = 2.0,
            debug = false,
            onEnter = function()
                if IsControlJustPressed(0, 38) then -- 'E' key
                    StartScrapTask()
                end
            end
        })
    end

    TriggerEvent('ox_lib:notify', {type = 'success', description = 'Job started! Go scrap cars.'})
end)

-- Scrap Task
function StartScrapTask()
    lib.progressCircle({
        duration = 15000,
        position = 'bottom',
        label = 'Scrapping Car...',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
            move = true
        },
        anim = {
            dict = 'mini@repair',
            clip = 'fixing_a_ped'
        }
    }, function(cancelled)
        if not cancelled then
            completedTasks = completedTasks + 1
            TriggerServerEvent('avid-salvage:rewardPlayer')
            if completedTasks >= Config.TasksRequired then
                TriggerEvent('ox_lib:notify', {type = 'success', description = 'Job complete! Return to the ped for payment.'})
            end
        else
            TriggerEvent('ox_lib:notify', {type = 'error', description = 'Task cancelled.'})
        end
    end)
end
