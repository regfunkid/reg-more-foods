# This function only activates when a player successfully burns a Marshmallow on a Stick.
# Another version of this function exists, but activates when they roast the item instead.
clear @s *[minecraft:custom_data={item_id:"rmf:roasted_marshmallow_stick"}] 1
give @s minecraft:charcoal[item_model="rmf:burned_marshmallow_stick",food={nutrition:1,saturation:0.5},consumable={},use_remainder={id:stick},minecraft:item_name='{translate:"item.rmf.burned_marshmallow_stick"}',custom_data={item_id:"rmf:burned_marshmallow_stick"},lore=['{"text":"Reg\'s More Foods",color:blue}']]
scoreboard players set @s rmf.roastingProgress 0
advancement grant @s[advancements={rmf:crafted_food=false}] only rmf:crafted_food burned marshmallow stick