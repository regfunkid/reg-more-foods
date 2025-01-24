give @s minecraft:firework_star[item_model="rmf:coconut_mash",minecraft:item_name='{translate:"item.rmf.coconut_mash"}',custom_data={item_id:"rmf:coconut_mash"},lore=['{text:"Reg\'s More Foods",color:blue}']]
clear @s[gamemode=!creative] firework_star[custom_data={item_id:"rmf:coconut_chunk"}] 1
execute at @s run playsound minecraft:block.grindstone.use