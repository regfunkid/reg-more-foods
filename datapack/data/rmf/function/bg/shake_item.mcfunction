# This function is part of a system that allows for crafting custom drinks.
# The second part (this file) is just for detecting specific items in a player's mainhand and, if they're crouching, turning them into different items if a Shaker Cup is in the offhand. It also runs a few extra commands as this happens.
# If you're making an add-on data pack for your own ingredients and drinks that use mashed items, you'll have to figure out how this works by looking at it and just copying what I did here. I'm sorry I can't be of more help here by explaining anything, this is just how my brain works
#
# Base steps (steps required for the rest of the commands to run)
# If the player is holding a Water Bottle and the Shaker Cup is empty, create the base
execute if items entity @s weapon.offhand minecraft:firework_star[custom_data={item_id:"rmf:shaker_cup"},minecraft:damage=0] if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents=water] run function rmf:bg/shaking/base
# If the player is holding a Water Barrel and the Shaker Cup is empty, create the base
execute if items entity @s weapon.offhand minecraft:firework_star[custom_data={item_id:"rmf:shaker_cup"},minecraft:damage=0] if items entity @s weapon.mainhand minecraft:flower_banner_pattern[custom_data={item_id:"rmf:water_barrel"}] run function rmf:bg/shaking/base
# If the player is holding a Snowball and the Shaker Cup is at base, create stage 1 for the drinks
execute if items entity @s weapon.offhand minecraft:firework_star[custom_data={item_id:"rmf:shaker_cup"},minecraft:damage=3] if items entity @s weapon.mainhand snowball run function rmf:bg/shaking/base2
# If the player is holding a Honey Bottle and the Shaker Cup is at base, create stage 1 for the jams
execute if items entity @s weapon.offhand minecraft:firework_star[custom_data={item_id:"rmf:shaker_cup"},minecraft:damage=3] if items entity @s weapon.mainhand honey_bottle run function rmf:bg/shaking/berry_jam_base
# If the player is holding Sugar and the Shaker Cup is at base, create stage 1 for Coconut Milk
execute if items entity @s weapon.offhand minecraft:firework_star[custom_data={item_id:"rmf:shaker_cup"},minecraft:damage=3] if items entity @s weapon.mainhand sugar run function rmf:bg/shaking/coconut_milk_base
# Sweet Berry Jam Crafting
#
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:damage=2,minecraft:custom_data~{contents:jam_recipe,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand firework_star[custom_data~{item_id:"rmf:sweet_berry_mash"}] if score @s rmf.shakerCooldown matches 0 run function rmf:bg/shaking/sweet_berry_jam_craft_1
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:damage=1,minecraft:custom_data~{contents:sweet_berry_jam_recipe,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand firework_star[custom_data~{item_id:"rmf:sweet_berry_mash"}] if score @s rmf.shakerCooldown matches 0 run function rmf:bg/shaking/sweet_berry_jam_craft_2
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:custom_data~{contents:sweet_berry_jam,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand bowl run function rmf:bg/shaking/sweet_berry_jam
# Glow Berry Jam Crafting
#
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:damage=2,minecraft:custom_data~{contents:jam_recipe,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand firework_star[custom_data~{item_id:"rmf:glow_berry_mash"}] if score @s rmf.shakerCooldown matches 0 run function rmf:bg/shaking/glow_berry_jam_craft_1
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:damage=1,minecraft:custom_data~{contents:glow_berry_jam_recipe,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand firework_star[custom_data~{item_id:"rmf:glow_berry_mash"}] if score @s rmf.shakerCooldown matches 0 run function rmf:bg/shaking/glow_berry_jam_craft_2
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:custom_data~{contents:glow_berry_jam,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand bowl run function rmf:bg/shaking/glow_berry_jam
# Melon Smoothie Crafting
#
execute if items entity @s weapon.offhand minecraft:firework_star[custom_data={item_id:"rmf:shaker_cup"},minecraft:damage=2] if items entity @s weapon.mainhand firework_star[custom_data~{item_id:"rmf:melon_mash"}] run function rmf:bg/shaking/melon_smoothie_craft
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:custom_data={contents:melon_smoothie,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand glass_bottle run function rmf:bg/shaking/melon_smoothie
# Banana Smoothie Crafting
#
execute if items entity @s weapon.offhand minecraft:firework_star[custom_data={item_id:"rmf:shaker_cup"},minecraft:damage=2] if items entity @s weapon.mainhand firework_star[custom_data~{item_id:"rmf:banana_mash"}] run function rmf:bg/shaking/banana_smoothie_craft
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:custom_data={contents:banana_smoothie,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand glass_bottle run function rmf:bg/shaking/banana_smoothie
# Mango Smoothie Crafting
#
execute if items entity @s weapon.offhand minecraft:firework_star[custom_data={item_id:"rmf:shaker_cup"},minecraft:damage=2] if items entity @s weapon.mainhand firework_star[custom_data~{item_id:"rmf:mango_mash"}] run function rmf:bg/shaking/mango_smoothie_craft
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:custom_data={contents:mango_smoothie,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand glass_bottle run function rmf:bg/shaking/mango_smoothie
# Peach Smoothie Crafting
#
execute if items entity @s weapon.offhand minecraft:firework_star[custom_data={item_id:"rmf:shaker_cup"},minecraft:damage=2] if items entity @s weapon.mainhand firework_star[custom_data~{item_id:"rmf:peach_mash"}] run function rmf:bg/shaking/peach_smoothie_craft
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:custom_data={contents:peach_smoothie,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand glass_bottle run function rmf:bg/shaking/peach_smoothie
# Strawberry Smoothie Crafting
#
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:damage=2,minecraft:custom_data={item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand firework_star[custom_data~{item_id:"rmf:strawberry_mash"}] if score @s rmf.shakerCooldown matches 0 run function rmf:bg/shaking/strawberry_smoothie_craft_1
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:damage=1,minecraft:custom_data~{contents:strawberry_smoothie_recipe,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand firework_star[custom_data~{item_id:"rmf:strawberry_mash"}] if score @s rmf.shakerCooldown matches 0 run function rmf:bg/shaking/strawberry_smoothie_craft_2
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:custom_data~{contents:strawberry_smoothie,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand glass_bottle run function rmf:bg/shaking/strawberry_smoothie
# Blueberry Smoothie Crafting
#
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:damage=2,minecraft:custom_data={item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand firework_star[custom_data~{item_id:"rmf:blueberry_mash"}] if score @s rmf.shakerCooldown matches 0 run function rmf:bg/shaking/blueberry_smoothie_craft_1
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:damage=1,minecraft:custom_data~{contents:blueberry_smoothie_recipe,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand firework_star[custom_data~{item_id:"rmf:blueberry_mash"}] if score @s rmf.shakerCooldown matches 0 run function rmf:bg/shaking/blueberry_smoothie_craft_2
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:custom_data~{contents:blueberry_smoothie,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand glass_bottle run function rmf:bg/shaking/blueberry_smoothie
# Raspberry Smoothie Crafting
#
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:damage=2,minecraft:custom_data={item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand firework_star[custom_data~{item_id:"rmf:raspberry_mash"}] if score @s rmf.shakerCooldown matches 0 run function rmf:bg/shaking/raspberry_smoothie_craft_1
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:damage=1,minecraft:custom_data~{contents:raspberry_smoothie_recipe,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand firework_star[custom_data~{item_id:"rmf:raspberry_mash"}] if score @s rmf.shakerCooldown matches 0 run function rmf:bg/shaking/raspberry_smoothie_craft_2
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:custom_data~{contents:raspberry_smoothie,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand glass_bottle run function rmf:bg/shaking/raspberry_smoothie
# Blackberry Smoothie Crafting
#
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:damage=2,minecraft:custom_data={item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand firework_star[custom_data~{item_id:"rmf:blackberry_mash"}] if score @s rmf.shakerCooldown matches 0 run function rmf:bg/shaking/blackberry_smoothie_craft_1
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:damage=1,minecraft:custom_data~{contents:blackberry_smoothie_recipe,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand firework_star[custom_data~{item_id:"rmf:blackberry_mash"}] if score @s rmf.shakerCooldown matches 0 run function rmf:bg/shaking/blackberry_smoothie_craft_2
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:custom_data~{contents:blackberry_smoothie,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand glass_bottle run function rmf:bg/shaking/blackberry_smoothie
# Coconut Milk Crafting
#
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:damage=2,minecraft:custom_data~{contents:coconut_milk_recipe,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand firework_star[custom_data~{item_id:"rmf:coconut_mash"}] if score @s rmf.shakerCooldown matches 0 run function rmf:bg/shaking/coconut_milk_craft_1
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:damage=1,minecraft:custom_data~{contents:coconut_milk_recipe,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand firework_star[custom_data~{item_id:"rmf:coconut_mash"}] if score @s rmf.shakerCooldown matches 0 run function rmf:bg/shaking/coconut_milk_craft_2
execute if items entity @s weapon.offhand minecraft:firework_star[minecraft:custom_data~{contents:coconut_milk,item_id:"rmf:shaker_cup"}] if items entity @s weapon.mainhand bucket run function rmf:bg/shaking/coconut_milk
# Remove the advancement that checks if a player is shaking an item from this player, so they can run it again later
#
advancement revoke @a[advancements={rmf:bg/shaked_item=true}] only rmf:bg/shaked_item