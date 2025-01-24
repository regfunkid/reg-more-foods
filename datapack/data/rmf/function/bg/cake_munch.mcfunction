# Uses the vanilla score for tracking using Cake to play a sound, grant Speed I for 2 minutes, and then reset the score (so it can reactivate)
execute as @s at @s run playsound minecraft:entity.generic.eat master @s ~ ~ ~
effect give @s speed 120 0
scoreboard players set @s rmf.ate_cake 0