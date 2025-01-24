execute if predicate rmf:empty_hand run damage @s 1 minecraft:cactus
execute if predicate rmf:empty_hand run advancement grant @s only rmf:yeouch
execute if items entity @s weapon.mainhand cactus run advancement grant @s only rmf:higher_brain
scoreboard players set @s rmf.mined_cactus 0