# This function resets ALL scoreboards set in the load function.
# The difference between this function and the load function is that the load function only runs these commands once, when the data pack is first loaded.
# This function can be called to manually reset scoreboards, just in case something breaks.
scoreboard players set rmf.config rmf.enableTimeTracking 1
scoreboard players set rmf.config rmf.grindingMaxCooldown 20
advancement revoke @a only rmf:bg/grinded_item
scoreboard players reset rmf.config rmf.version
scoreboard players set rmf.config rmf.worldLoaded 0
scoreboard players set @a rmf.grindingCooldown 0
scoreboard players set @a rmf.shakerCooldown 0
scoreboard players set @a rmf.roastingProgress 0
# These two shouldn't have any problems since they're handled elsewhere, but I'm including them here just incase
scoreboard players set @a rmf.mined_wheat 0
scoreboard players set @a rmf.mined_beetroots 0
tellraw @s ["\n\n\n\n\n\n\n\n\n\n",{"text":"[RMF Config]","color":"yellow"}," ",{"translate":"rmfcommands.resetAllScores.success"}]