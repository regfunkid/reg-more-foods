advancement revoke @a only morefoods:bg/ice_cream_refunder
advancement revoke @a only morefoods:bg/kabob_2
advancement revoke @a only morefoods:bg/kabob_1
advancement revoke @a only morefoods:bg/kabob_0
execute as @e[type=item,name="Honeycomb"] run data merge entity @s {Item:{components:{"minecraft:food":{nutrition:5,saturation:1.0f}}}}
execute as @e[type=item,name="Glow Berries"] run data merge entity @s {Item:{components:{"minecraft:food":{nutrition:2,saturation:0.4f,can_always_eat: true, eat_seconds: 1}}}}
execute as @e[type=item,name="Sweet Berries"] run data merge entity @s {Item:{components:{"minecraft:food":{nutrition:2,saturation:0.4f,can_always_eat: true, eat_seconds: 1}}}}