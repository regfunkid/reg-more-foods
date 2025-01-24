# This function is fills empty glass bottles with a mango smoothie. It also grants the advancement for making a smoothie if the player doesn't already have it.
#
# First, remove the bottle, play a sound, grant the advancement, and give them the drink...
clear @s[scores={rmf.shakerCooldown=0},gamemode=!creative] glass_bottle 1
execute at @s[scores={rmf.shakerCooldown=0}] run playsound minecraft:item.bottle.fill
give @s[scores={rmf.shakerCooldown=0}] minecraft:firework_star[item_model="rmf:smoothie_mango",minecraft:item_name='{translate:"item.rmf.mango_smoothie"}',food={nutrition:4,saturation:5},consumable={has_consume_particles:false,sound:entity.generic.drink},use_remainder={id:glass_bottle},custom_data={item_id:"rmf:mango_smoothie"},lore=['{text:"Reg\'s More Foods",color:blue}']]
advancement grant @s only rmf:shaken_not_stirred
advancement grant @s only rmf:smoothie_diet mango_smoothie
# ...Then, give them a shakerCooldown score of 0.5 seconds, so they don't fill bottles every tick...
scoreboard players set @s[scores={rmf.shakerCooldown=0}] rmf.shakerCooldown 10
# ...Then, check the state of the shaker cup in the offhand and run a command if:
# - It's been used twice. The third use resets the shaker cup.
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:damage=3,custom_data~{contents:mango_smoothie,item_id:"rmf:shaker_cup"}] if score @s rmf.shakerCooldown matches 10 run item replace entity @s weapon.offhand with minecraft:firework_star[item_model="rmf:shaker_cup",minecraft:damage=0,minecraft:max_damage=4,minecraft:max_stack_size=1,minecraft:item_name='{translate:"item.rmf.shaker_cup"}',custom_data={item_id:"rmf:shaker_cup"},lore=['{text:"Reg\'s More Foods",color:blue}']]
# - It's been used once.
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:damage=2,custom_data~{contents:mango_smoothie,item_id:"rmf:shaker_cup"}] if score @s rmf.shakerCooldown matches 10 run item replace entity @s weapon.offhand with minecraft:firework_star[item_model="rmf:shaker_cup",minecraft:damage=3,minecraft:max_damage=4,minecraft:max_stack_size=1,minecraft:item_name='{translate:"item.rmf.shaker_cup"}',minecraft:enchantment_glint_override=true,lore=['{translate:"item.rmf.shaker_cup.contents","color":"white","italic":false}','{translate:"item.rmf.shaker_cup.contents_mango","color":"aqua","italic":false}','{text:"Reg\'s More Foods",color:blue}'],minecraft:custom_data={contents:mango_smoothie,item_id:"rmf:shaker_cup"}]
# - It hasn't been used yet.
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:damage=0,custom_data~{contents:mango_smoothie,item_id:"rmf:shaker_cup"}] if score @s rmf.shakerCooldown matches 10 run item replace entity @s weapon.offhand with minecraft:firework_star[item_model="rmf:shaker_cup",minecraft:damage=2,minecraft:max_damage=4,minecraft:max_stack_size=1,minecraft:item_name='{translate:"item.rmf.shaker_cup"}',minecraft:enchantment_glint_override=true,lore=['{translate:"item.rmf.shaker_cup.contents","color":"white","italic":false}','{translate:"item.rmf.shaker_cup.contents_mango","color":"aqua","italic":false}','{text:"Reg\'s More Foods",color:blue}'],minecraft:custom_data={contents:mango_smoothie,item_id:"rmf:shaker_cup"}]
# The commands are in reverse order so that a player doesn't accidentally blast through all 3 durability uses at once.