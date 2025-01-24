# This function is the second step of all "shaking" recipes.
# Basically, it just a snowball from the player's inventory. It then updates the shaker cup's damage value to show progress being made towards a drink.
clear @s[gamemode=!creative] snowball 1
execute at @s run playsound minecraft:block.snow.hit
item replace entity @s weapon.offhand with minecraft:firework_star[item_model="rmf:shaker_cup",minecraft:damage=2,minecraft:max_damage=4,minecraft:max_stack_size=1,minecraft:item_name='{translate:"item.rmf.shaker_cup"}',custom_data={item_id:"rmf:shaker_cup"},lore=['{text:"Reg\'s More Foods",color:blue}']]