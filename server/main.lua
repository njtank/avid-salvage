RegisterNetEvent('avid-salvage:rewardPlayer', function()
    local source = source
    local item = Config.RewardItems[math.random(#Config.RewardItems)]
    local amount = math.random(Config.MinReward, Config.MaxReward)

    exports.ox_inventory:addItem(source, item, amount)
    if completedTasks >= Config.TasksRequired then
        TriggerClientEvent('ox_lib:notify', source, {type = 'success', description = 'You earned $' .. Config.PaymentAmount .. ' for completing the job!'})
        -- Add payment logic
        exports.ox_inventory:addItem(source, 'cash', Config.PaymentAmount)
    else
        TriggerClientEvent('ox_lib:notify', source, {type = 'inform', description = 'Keep going! Tasks left: ' .. (Config.TasksRequired - completedTasks)})
    end
end)
