# Part of the kabob system. Gives players the next step of "kabob" if they aren't on the last one already.
# It's not... great. If a player eats one, it'll be given in another slot from the one they used (annoying)
# But the alternative is making a new set of functions and advancements if they eat from the offhand--which i'm not doing.
give @s firework_star[minecraft:custom_model_data=134,minecraft:max_damage=3,minecraft:damage=1,minecraft:max_stack_size=1,food={nutrition:6,saturation:14.4,eat_seconds:2.4},minecraft:item_name='{"text":"Kabob"}']