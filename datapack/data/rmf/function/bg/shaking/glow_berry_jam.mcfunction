# This function is fills empty glass bottles with a melon smoothie. It also grants the advancement for making a smoothie if the player doesn't already have it.
#
# First, remove the bowl, play a sound, grant the advancement, and give them the jam...
clear @s[scores={rmf.shakerCooldown=0},gamemode=!creative] bowl 1
execute at @s[scores={rmf.shakerCooldown=0}] run playsound minecraft:item.glow_ink_sac.use
give @s[scores={rmf.shakerCooldown=0}] minecraft:firework_star[item_model="rmf:glow_berry_jam",minecraft:item_name='{translate:"item.rmf.glow_berry_jam"}',food={nutrition:8,saturation:6},consumable={has_consume_particles:false,sound:item.honey_bottle.drink,on_consume_effects:[{type:apply_effects,effects:[{id:glowing,duration:200}]}]},use_remainder={id:bowl},custom_data={item_id:"rmf:glow_berry_jam"},lore=['{text:"Reg\'s More Foods",color:blue}']]
advancement grant @s[advancements={rmf:not_jammed=false}] only rmf:not_jammed
advancement grant @s[advancements={rmf:root=false}] only rmf:root glow berry jam
# ...Then, completely reset the shaker cup by replacing it in the player's offhand.
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:damage=0,custom_data~{contents:glow_berry_jam,item_id:"rmf:shaker_cup"}] if score @s rmf.shakerCooldown matches 0 run item replace entity @s weapon.offhand with minecraft:firework_star[item_model="rmf:shaker_cup",minecraft:damage=0,minecraft:max_damage=4,minecraft:max_stack_size=1,minecraft:item_name='{translate:"item.rmf.shaker_cup"}',custom_data={item_id:"rmf:shaker_cup"},lore=['{text:"Reg\'s More Foods",color:blue}']]