give @s minecraft:firework_star[item_model="rmf:banana_mash",minecraft:item_name='{translate:"item.rmf.banana_mash"}',custom_data={item_id:"rmf:banana_mash"},lore=['{text:"Reg\'s More Foods",color:blue}']]
clear @s[gamemode=!creative] firework_star[custom_data={item_id:"rmf:banana"}] 1
execute at @s run playsound minecraft:block.grindstone.use