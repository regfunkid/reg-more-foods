# This function uses the "rmf:recycle_bones" advancement to detect when a player consumed Bone Stock.
# Every time they do, a number is rolled from 1-10. If the number is between 1-4, they get the bone back.
execute store result score @s rmf.recycle_bones run random value 1..10
execute if score @s rmf.recycle_bones matches 1..4 run give @s bone
advancement revoke @s only rmf:bg/recycle_bones