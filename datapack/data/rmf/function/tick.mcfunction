# This function runs each command every tick (20 times a second) to make sure that at any point in time a player can access them if they must be run
# KEEP IN MIND all of my data pack tests are by myself, in a singleplayer world. i do not know how this will affect a multiplayer world or server (if only i had someone to help me test that!!!!)
function rmf:bg/time_indicator
function rmf:bg/grinding_stuff
function rmf:bg/roasting/detect_roastables
execute as @a[advancements={rmf:bountiful_harvest=true}] if score @s rmf.mined_wheat matches 1.. run function rmf:bg/reset_bonus_hoeables
execute as @a[advancements={rmf:bountiful_harvest=true}] if score @s rmf.mined_beetroots matches 1.. run function rmf:bg/reset_bonus_hoeables
execute as @a[scores={rmf.ate_cake=1..}] run function rmf:bg/cake_munch
execute as @a[scores={rmf.mined_cactus=1..}] run function rmf:bg/hurt_hand
#
# This is for updating specific items in a player's inventory incase an update happens to change them
function rmf:fix/fix_items