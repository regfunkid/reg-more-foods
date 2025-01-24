# This function is the first step of all "jam" recipes.
# Like the other base functions for smoothies, the player inserts an ingredient that prepares the shaker cup for making jam.
clear @s[gamemode=!creative] honey_bottle 1
give @s[gamemode=!creative] glass_bottle
execute at @s run playsound minecraft:item.bottle.empty
item replace entity @s weapon.offhand with minecraft:firework_star[item_model="rmf:shaker_cup",minecraft:damage=2,minecraft:max_damage=4,minecraft:max_stack_size=1,minecraft:item_name='{translate:"item.rmf.shaker_cup"}',minecraft:custom_data={contents:jam_recipe,item_id:"rmf:shaker_cup"},lore=['{text:"Reg\'s More Foods",color:blue}']]