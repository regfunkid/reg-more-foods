give @s minecraft:firework_star[item_model="rmf:peach_mash",minecraft:item_name='{translate:"item.rmf.peach_mash"}',custom_data={item_id:"rmf:peach_mash"},lore=['{text:"Reg\'s More Foods",color:blue}']]
clear @s[gamemode=!creative] firework_star[custom_data={item_id:"rmf:peach"}] 1
execute at @s run playsound minecraft:block.grindstone.use