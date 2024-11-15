Config = {}

-- Ped Config
Config.PedModel = 's_m_m_autoshop_01' -- Example ped model
Config.PedCoords = vector4(-343.34, -1569.22, 25.22, 50.0) -- Example coordinates (x, y, z, heading)

-- Zones for Salvaging
Config.SalvageZones = {
    vector3(-340.32, -1565.50, 25.22),
    vector3(-345.50, -1570.15, 25.22),
    -- Add more zones here
}

-- Salvage Rewards
Config.RewardItems = { 'plastic', 'scrapmetal', 'rubber' }
Config.MinReward = 1
Config.MaxReward = 4

-- Payment
Config.TasksRequired = 14
Config.PaymentAmount = 50 -- Cash
