# This function is for crafting Sweet Berry Jam.
# It's the first step in the process: the player needs to add another ingredient.
clear @s[gamemode=!creative] firework_star[custom_data~{item_id:"rmf:sweet_berry_mash"}] 1
execute at @s run playsound minecraft:item.bundle.insert
item replace entity @s weapon.offhand with minecraft:firework_star[item_model="rmf:shaker_cup",minecraft:damage=1,minecraft:max_damage=4,minecraft:max_stack_size=1,minecraft:item_name='{translate:"item.rmf.shaker_cup"}',lore=['{text:"Reg\'s More Foods", color:blue}'],minecraft:custom_data={contents:sweet_berry_jam_recipe,item_id:"rmf:shaker_cup"}]
# This command stops players from accidentally inserting both Sweet Berry Mush items at once, even if they plan on doing so anyway.
scoreboard players set @s[scores={rmf.shakerCooldown=0}] rmf.shakerCooldown 10