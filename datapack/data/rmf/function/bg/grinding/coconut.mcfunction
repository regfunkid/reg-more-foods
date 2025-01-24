give @s minecraft:firework_star[item_model="rmf:coconut_chunk",minecraft:item_name='{translate:"item.rmf.coconut_chunk"}',custom_data={item_id:"rmf:coconut_chunk"},lore=['{text:"Reg\'s More Foods",color:blue}'],food={nutrition:3,saturation:2.4},consumable={}] 3
clear @s[gamemode=!creative] firework_star[custom_data={item_id:"rmf:coconut"}] 1
execute at @s run playsound minecraft:block.grindstone.use
advancement grant @s[advancements={rmf:crafted_food=false}] only rmf:crafted_food coconut chunk