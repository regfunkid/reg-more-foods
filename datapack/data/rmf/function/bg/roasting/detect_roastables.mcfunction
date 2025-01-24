# This function uses the predicate that detects whenever a player is crouching with a Marshmallow on a Stick, and uses it to also detect if a player is in front of a valid "roasting" block. If they are, it will begin the roasting process (It also keeps track of the player's roastingProgress to give them the roasted items).
# Different "roastable" blocks will increase the meter. For instance, a Campfire will increase the meter by 1 while a Soul Campfire will increase it by 2. The "hotter" the block, the faster it will "roast" the item. This can be seen easily by looking at the number following "rmf.roastingProgress" for each roastable block.
# Like the rest of the data pack, this functionality is designed to be easy to code and replace. If a player wishes to add their own roastable block, they can copy what I've done here.
# Due to the way this had to be coded, there's no way to accidentally burn a Marshmallow on a Stick without forcing players to only hold 1 at a time. Players attempting to complete "The Gourmand" advancement can intentionally re-roast a Roasted Marshmallow on a Stick to obtain the burned variant.
#
# Campfire
execute as @a[predicate=rmf:roasting_marshmallow] at @s if block ^ ^1 ^ campfire[lit=true] run scoreboard players add @s rmf.roastingProgress 1
# Fire
execute as @a[predicate=rmf:roasting_marshmallow] at @s if block ^ ^1 ^ fire run scoreboard players add @s rmf.roastingProgress 1
# Soul Campfire
execute as @a[predicate=rmf:roasting_marshmallow] at @s if block ^ ^1 ^ soul_campfire[lit=true] run scoreboard players add @s rmf.roastingProgress 2
# Soul Fire
execute as @a[predicate=rmf:roasting_marshmallow] at @s if block ^ ^1 ^ soul_fire run scoreboard players add @s rmf.roastingProgress 2
# Lava
execute as @a[predicate=rmf:roasting_marshmallow] at @s if block ^ ^1 ^1 lava run scoreboard players add @s rmf.roastingProgress 5
# Roast or burn items
execute as @a[scores={rmf.roastingProgress=40}] if items entity @s weapon.mainhand *[minecraft:custom_data={item_id:"rmf:marshmallow_stick"}] run function rmf:bg/roasting/roast_marshmallow
execute as @a[scores={rmf.roastingProgress=10}] if items entity @s weapon.mainhand *[minecraft:custom_data={item_id:"rmf:roasted_marshmallow_stick"}] run function rmf:bg/roasting/burn_marshmallow
execute as @a[scores={rmf.roastingProgress=20}] if items entity @s weapon.mainhand *[minecraft:custom_data={item_id:"rmf:burned_marshmallow_stick"}] run function rmf:bg/roasting/burn_charcoal
# Reset roasting progress if meter hits max or player stops crouching
execute as @a[scores={rmf.roastingProgress=1..}] unless predicate rmf:roasting_marshmallow run scoreboard players set @s rmf.roastingProgress 0
scoreboard players set @a[scores={rmf.roastingProgress=61..}] rmf.roastingProgress 0
# Crafting the Marshmallow Sandwich (reuses Shaker Cup code, which saves time and should is fine)
execute as @a if score @s rmf.shakerCooldown matches 0 if predicate rmf:is_crouching if items entity @s weapon.mainhand *[minecraft:custom_data={item_id:"rmf:roasted_marshmallow_stick"}] if items entity @s weapon.offhand *[minecraft:custom_data={item_id:"rmf:cracker"}] run function rmf:bg/roasting/assemble_marshmallow_1
execute as @a if score @s rmf.shakerCooldown matches 0 if predicate rmf:is_crouching if items entity @s weapon.mainhand *[minecraft:custom_data={item_id:"rmf:half_marshmallow_sandwich"}] if items entity @s weapon.offhand *[minecraft:custom_data={item_id:"rmf:cracker"}] run function rmf:bg/roasting/assemble_marshmallow_2