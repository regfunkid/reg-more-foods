# This function runs every time the pack is either loaded into a world, or reloaded using /reload.
# I *could* put the player set objectives into their own function and then schedule them, but it's easier to have them activate again on their own upon a player obtaining the items required to make use of said objective. That way, they're sort of on a "need to know" basis.
scoreboard objectives add rmf.daytime dummy
scoreboard objectives add rmf.enableTimeTracking dummy
scoreboard objectives add rmf.grindingCooldown dummy
scoreboard objectives add rmf.grindingMaxCooldown dummy
scoreboard objectives add rmf.shakerCooldown dummy
scoreboard objectives add rmf.mined_cactus mined:cactus
scoreboard objectives add rmf.ate_cake minecraft.custom:minecraft.eat_cake_slice
scoreboard objectives add rmf.roastingProgress dummy
scoreboard objectives add rmf.recycle_bones dummy
scoreboard objectives add rmf.mined_wheat mined:wheat
scoreboard objectives add rmf.mined_beetroots mined:beetroots
scoreboard objectives add rmf.version dummy
scoreboard objectives add rmf.worldLoaded dummy
execute unless score rmf.config rmf.worldLoaded matches 1 run scoreboard players set rmf.config rmf.enableTimeTracking 1
execute unless score rmf.config rmf.worldLoaded matches 1 run scoreboard players set rmf.config rmf.grindingMaxCooldown 20
# These commands should be safe to have reloaded incase of an issue, but there is a function that should fix this anyway (/function rmf:_config/reset_all_scores)
scoreboard players set @a rmf.grindingCooldown 0
scoreboard players set @a rmf.shakerCooldown 0
scoreboard players set @a rmf.roastingProgress 0
scoreboard players set @a rmf.recycle_bones 0
scoreboard players set @a rmf.mined_wheat 0
scoreboard players set @a rmf.mined_beetroots 0
# If this is the first time the data pack is being loaded on a world, send a nice message
execute unless score rmf.config rmf.worldLoaded matches 1 run function rmf:bg/welcome_message
# If this is the first time the world has been loaded to the current RMF version, let players know what's new
execute unless score rmf.config rmf.version matches 121 run function rmf:bg/whats_new
# No matter whether or not the datapack has been loaded in the world for the first time or not, make sure the version is updated (scoreboards can't have decimals, so versions are written without them. "121" means "v1.2.1")
scoreboard players set rmf.config rmf.version 121
# These next commands check to see if the world has been loaded with the data pack yet. 
# When the data pack is loaded for the first time, it will create the scoreboard and attempt to set it to "0".
# If the score is NOT set to "1", it will set it to "0".
# It will then update that score to "1" ONLY if the score is still 0.
# In other words, certain commands in this function will not run for a second time if the data pack is reloaded.
execute unless score rmf.config rmf.worldLoaded matches 1 run scoreboard players set rmf.config rmf.worldLoaded 0
execute if score rmf.config rmf.worldLoaded matches 0 run scoreboard players set rmf.config rmf.worldLoaded 1
# Once the pack has finished loading, play a nice sound
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~
# If the player has the Yet Another Data Pack API data pack installed, give them an advancement
# (The Yet Another Datapack API hasn't been created yet, but an advancement will be here when it is!)