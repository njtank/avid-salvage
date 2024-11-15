# **Avid-Salvage**  
**Version:** 1.0.0  

## **Overview**  
Avid-Salvage is a FiveM script that allows players to take on a salvage job where they scrap cars at designated zones. This script uses **ox_inventory**, **ox_lib**, and **ox_target** for smooth functionality and a user-friendly experience.  

Players will:  
- Interact with a ped to start the job.  
- Complete "Scrap Car" tasks at configurable zones using animations and progress bars.  
- Earn $50 upon completing 14 tasks and receive random salvageable items during each task.  

---

## **Features**  
- **Customizable Ped**: Easily configure the ped's model and location.  
- **Interactive Zones**: Players can perform tasks at multiple configurable salvage zones.  
- **Reward System**: Players earn cash and items ("plastic," "scrapmetal," and "rubber") for their work.  
- **Integrated Animations**: Uses the `mini@repair:fixing_a_ped` animation with a progress bar.  
- **Dependencies**: Built to integrate seamlessly with **ox_inventory**, **ox_lib**, and **ox_target**.  

---

## **Installation**  

### **Requirements**  
Ensure the following resources are installed on your server:  
- [**ox_inventory**](https://github.com/overextended/ox_inventory)  
- [**ox_lib**](https://github.com/overextended/ox_lib)  
- [**ox_target**](https://github.com/overextended/ox_target)  

### **Steps to Install**  
1. **Download and Extract**:  
   Download the `avid-salvage` folder and place it in your server's resource directory.  

2. **Add to `server.cfg`**:  
   Add the following line to your `server.cfg`:  
   ```plaintext
   ensure avid-salvage
   ```

3. **Configure**:  
   Open the `config.lua` file to customize the ped, salvage zones, rewards, and payment amounts as needed.  

---

## **How to Use**  
1. Interact with the designated ped using **ox_target** to start the job.  
2. Head to the salvage zones marked on the map.  
3. Press **E** at a salvage zone to perform the "Scrap Car" task.  
4. Complete 14 tasks to return to the ped and receive your payment.  

---

## **Configuration**  
All configuration options are located in the `config.lua` file.  

### **Ped Configuration**  
Set the ped's model and coordinates:  
```lua
Config.PedModel = 's_m_m_autoshop_01'
Config.PedCoords = vector4(-343.34, -1569.22, 25.22, 50.0)
```

### **Salvage Zones**  
Define the zones for scrapping cars:  
```lua
Config.SalvageZones = {
    vector3(-340.32, -1565.50, 25.22),
    vector3(-345.50, -1570.15, 25.22),
}
```

### **Rewards**  
Customize the reward items and quantities:  
```lua
Config.RewardItems = { 'plastic', 'scrapmetal', 'rubber' }
Config.MinReward = 1
Config.MaxReward = 4
```

### **Payment**  
Set the number of tasks required and payment amount:  
```lua
Config.TasksRequired = 14
Config.PaymentAmount = 50
```

---

## **Dependencies**  
Ensure you have the following installed and properly set up:  
- [**ox_inventory**](https://github.com/overextended/ox_inventory)  
- [**ox_lib**](https://github.com/overextended/ox_lib)  
- [**ox_target**](https://github.com/overextended/ox_target)  

---
For any issues or suggestions, feel free to reach out! 🚗🔧
