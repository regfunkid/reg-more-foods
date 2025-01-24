# This function is for crafting Coconut Milk.
# It's the second step in the process: the player needs to add another ingredient.
clear @s[gamemode=!creative] firework_star[custom_data~{item_id:"rmf:coconut_mash"}] 1
execute at @s run playsound minecraft:item.bundle.insert
item replace entity @s weapon.offhand with minecraft:firework_star[item_model="rmf:shaker_cup",minecraft:damage=1,minecraft:max_damage=4,minecraft:max_stack_size=1,minecraft:item_name='{translate:"item.rmf.shaker_cup"}',lore=['{text:"Reg\'s More Foods", color:blue}'],minecraft:custom_data={contents:coconut_milk_recipe,item_id:"rmf:shaker_cup"}]
# This command stops players from accidentally inserting both Coconut Mash items at once, even if they plan on doing so anyway.
scoreboard players set @s[scores={rmf.shakerCooldown=0}] rmf.shakerCooldown 10