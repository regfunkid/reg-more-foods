# Gives the player a Marshmallow Sandwich.
clear @s *[custom_data={item_id:"rmf:cracker"}] 1
clear @s *[custom_data={item_id:"rmf:half_marshmallow_sandwich"}] 1
give @s minecraft:firework_star[item_model="rmf:marshmallow_sandwich",food={nutrition:8,saturation:5},consumable={},minecraft:item_name='{translate:"item.rmf.marshmallow_sandwich"}',custom_data={item_id:"rmf:marshmallow_sandwich"},lore=['{"text":"Reg\'s More Foods",color:blue}']]
scoreboard players set @s rmf.shakerCooldown 20
advancement grant @s[advancements={rmf:distinct_sandwich=false}] only rmf:distinct_sandwich
advancement grant @s[advancements={rmf:crafted_food=false}] only rmf:crafted_food marshmallow sandwich