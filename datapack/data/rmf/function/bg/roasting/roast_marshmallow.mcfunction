# This function only activates when a player successfully roasts a Marshmallow on a Stick.
# Another version of this function exists, but activates when they burn the item instead.
clear @s *[minecraft:custom_data={item_id:"rmf:marshmallow_stick"}] 1
give @s minecraft:firework_star[item_model="rmf:roasted_marshmallow_stick",food={nutrition:5,saturation:3,can_always_eat:true},consumable={sound:block.honey_block.slide,has_consume_particles:false},use_remainder={id:stick},minecraft:item_name='{translate:"item.rmf.roasted_marshmallow_stick"}',custom_data={item_id:"rmf:roasted_marshmallow_stick"},lore=['{"text":"Reg\'s More Foods",color:blue}']]
advancement grant @s[advancements={rmf:crafted_food=false}] only rmf:crafted_food roasted marshmallow stick