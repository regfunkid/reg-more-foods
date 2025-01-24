# This function initiates the Uninstall procedure.
# Basically, it removes any scoreboards, recipes, and advancements added.
# However, it doesn't remove any items given or gained through crafting or anything, that way a player can re-enable the pack and they will be useful again.
# It also doesn't uninstall itself--it just makes it safe to remove it from the datapack folder or modpack.
# If you wish to uninstall Reg's More Foods, DON'T call this specific function directly! There's another that will do it for you! `function rmf:_config/uninstall`
tellraw @a [{"text":"\n"},{"text":"[RMF Config]","color":"yellow"},{"translate":"rmfcommands.uninstall_1"}]
# Remove the scoreboards...
scoreboard objectives remove rmf.daytime
scoreboard objectives remove rmf.enableTimeTracking
scoreboard objectives remove rmf.grindingCooldown
scoreboard objectives remove rmf.grindingMaxCooldown
scoreboard objectives remove rmf.shakerCooldown
scoreboard objectives remove rmf.mined_cactus
scoreboard objectives remove rmf.ate_cake
scoreboard objectives remove rmf.roastingProgress
scoreboard objectives remove rmf.recycle_bones
scoreboard objectives remove rmf.mined_wheat
scoreboard objectives remove rmf.mined_beetroots
scoreboard objectives remove rmf.version
scoreboard objectives remove rmf.worldLoaded
# Remove all recipes...
function rmf:_config/take_all_recipes
# Remove all advancements...
advancement revoke @a from rmf:root
advancement revoke @a from rmf:recipes/root
# Everything's been removed, so let the player know they can safely delete the datapack from their world/modloader
tellraw @a [{"text":"\n"},{"text":"[RMF Config] ","color":"yellow"},{"translate":"rmfcommands.uninstall_2"}]