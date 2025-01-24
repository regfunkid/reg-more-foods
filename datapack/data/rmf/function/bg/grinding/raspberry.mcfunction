give @s minecraft:firework_star[item_model="rmf:raspberry_mash",minecraft:item_name='{translate:"item.rmf.raspberry_mash"}',custom_data={item_id:"rmf:blackberry_mash"},lore=['{text:"Reg\'s More Foods",color:blue}']]
clear @s[gamemode=!creative] firework_star[custom_data={item_id:"rmf:raspberry"}] 1
execute at @s run playsound minecraft:block.grindstone.use