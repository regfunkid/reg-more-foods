# This function is the first step of crafting Coconut Milk.
# Basically, it just removes the Sugar from the player's mainhand and then updates the shaker cup's damage value to show progress being made towards making the item.
clear @s[gamemode=!creative] sugar 1
execute at @s run playsound minecraft:item.bundle.insert
item replace entity @s weapon.offhand with minecraft:firework_star[item_model="rmf:shaker_cup",minecraft:damage=2,minecraft:max_damage=4,minecraft:max_stack_size=1,minecraft:item_name='{translate:"item.rmf.shaker_cup"}',custom_data={contents:"coconut_milk_recipe",item_id:"rmf:shaker_cup"},lore=['{text:"Reg\'s More Foods",color:blue}']]