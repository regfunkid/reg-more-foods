# A bunch of commands required for the grinding system to work.
# Please don't bother asking me how all of this works, I barely remember as it stands and I'm afraid to touch any of this lest it falls apart like a Jenga tower
scoreboard players remove @a[scores={rmf.shakerCooldown=1..}] rmf.shakerCooldown 1
tag @a[predicate=rmf:grinded_item] add rmf.usedMortarAndPestle
execute as @a[tag=rmf.usedMortarAndPestle] if score @s rmf.grindingCooldown < rmf.config rmf.grindingMaxCooldown run scoreboard players add @s rmf.grindingCooldown 1
execute as @a[tag=rmf.usedMortarAndPestle] if score @s rmf.grindingCooldown = rmf.config rmf.grindingMaxCooldown run tag @s remove rmf.usedMortarAndPestle
execute as @a if score @s rmf.grindingCooldown = rmf.config rmf.grindingMaxCooldown run scoreboard players set @s rmf.grindingCooldown 0