# Gives the player a "half" Marshmallow Sandwich. Due to the way this system is coded, players have to assemble the sandwich item half way, and apply another cracker to the half-finished version to get the full edible item.
clear @s *[custom_data={item_id:"rmf:cracker"}] 1
clear @s *[custom_data={item_id:"rmf:roasted_marshmallow_stick"}] 1
give @s minecraft:firework_star[item_model="rmf:half_marshmallow_sandwich",minecraft:item_name='{translate:"item.rmf.marshmallow_sandwich"}',custom_data={item_id:"rmf:half_marshmallow_sandwich"},lore=['{"translate":"item.rmf.marshmallow_sandwich.help",italic:false,color:white}','{"text":"Reg\'s More Foods",color:blue}']]
give @s minecraft:stick
scoreboard players set @s rmf.shakerCooldown 20