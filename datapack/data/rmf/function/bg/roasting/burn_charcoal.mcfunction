# This function only activates when a player successfully burns a Charcoal on a Stick.
# I thought of it while making the Cookbook, and it was pretty funny to me so I just whipped this up really quickly.
clear @s[gamemode=!creative] *[minecraft:custom_data={item_id:"rmf:burned_marshmallow_stick"}] 1
give @s minecraft:torch
scoreboard players set @s rmf.roastingProgress 0
advancement grant @s[advancements={rmf:roundabout_crafting=false}] only rmf:roundabout_crafting