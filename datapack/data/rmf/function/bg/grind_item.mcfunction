# This function is part of a system that allows for crafting custom drinks.
# The first part is a predicate that checks for the items being held.
# The second part (this file) is just for detecting specific items in a player's mainhand and, if they're crouching, turning them into different items if a Mortar and Pestle is in the offhand. Yes I know that sounds like the same thing but that's because it is. I don't know, this is how I coded it when I made them system. I might go back and fix it some other time
# If you're making an add-on data pack for your own ingredients and drinks that use mashed items, you'll have to figure out how this works by looking at it and just copying what I did here. I'm sorry I can't be of more help here by explaining anything, this is just how my brain works
#
# Melon Slices
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand melon_slice run function rmf:bg/grinding/melon_slice
# Sweet Berries
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand sweet_berries run function rmf:bg/grinding/sweet_berries
# Glow Berries
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand glow_berries run function rmf:bg/grinding/glow_berries
# Coconuts
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand firework_star[custom_data={item_id:"rmf:coconut"}] run function rmf:bg/grinding/coconut
# Coconut Chunks
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand firework_star[custom_data={item_id:"rmf:coconut_chunk"}] run function rmf:bg/grinding/coconut_chunk
# Bananas
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand firework_star[custom_data={item_id:"rmf:banana"}] run function rmf:bg/grinding/banana
# Mangoes
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand firework_star[custom_data={item_id:"rmf:mango"}] run function rmf:bg/grinding/mango
# Strawberries
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand firework_star[custom_data={item_id:"rmf:strawberry"}] run function rmf:bg/grinding/strawberry
# Blueberries
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand firework_star[custom_data={item_id:"rmf:blueberry"}] run function rmf:bg/grinding/blueberry
# Raspberries
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand firework_star[custom_data={item_id:"rmf:raspberry"}] run function rmf:bg/grinding/raspberry
# Blackberries
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand firework_star[custom_data={item_id:"rmf:blackberry"}] run function rmf:bg/grinding/blackberry
# Peaches
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand firework_star[custom_data={item_id:"rmf:peach"}] run function rmf:bg/grinding/peach
# Sugar Cane
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand sugar_cane run function rmf:bg/grinding/sugar_cane
# Lilac
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand lilac run function rmf:bg/grinding/lilac
# Sunflower
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand sunflower run function rmf:bg/grinding/sunflower
# Ink Sac
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand ink_sac run function rmf:bg/grinding/ink_sac
# Dandelion
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand dandelion run function rmf:bg/grinding/dandelion
# Poppy
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand poppy run function rmf:bg/grinding/poppy
# Blue Orchid
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand blue_orchid run function rmf:bg/grinding/blue_orchid
# Allium
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand allium run function rmf:bg/grinding/allium
# Azure Bluet
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand azure_bluet run function rmf:bg/grinding/azure_bluet
# Red Tulip
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand red_tulip run function rmf:bg/grinding/red_tulip
# White Tulip
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand white_tulip run function rmf:bg/grinding/white_tulip
# Cocoa Beans
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand cocoa_beans run function rmf:bg/grinding/cocoa_beans
# Pink Petals
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand pink_petals run function rmf:bg/grinding/pink_petals
# Torchflower
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand torchflower run function rmf:bg/grinding/torchflower
# Wither Rose
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand wither_rose run function rmf:bg/grinding/wither_rose
# Lily of the Valley
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand lily_of_the_valley run function rmf:bg/grinding/lily_of_the_valley
# Cornflower
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand cornflower run function rmf:bg/grinding/cornflower
# Oxeye Daisy
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand oxeye_daisy run function rmf:bg/grinding/oxeye_daisy
# Pink Tulip
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand pink_tulip run function rmf:bg/grinding/pink_tulip
# Orange Tulip
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand orange_tulip run function rmf:bg/grinding/orange_tulip
# Rose Bush
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand rose_bush run function rmf:bg/grinding/rose_bush
# Blaze Rod
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand blaze_rod run function rmf:bg/grinding/blaze_rod
# Breeze Rod
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand breeze_rod run function rmf:bg/grinding/breeze_rod
# Pitcher Plant
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand pitcher_plant run function rmf:bg/grinding/pitcher_plant
# Peony
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand peony run function rmf:bg/grinding/peony
# Bone Meal
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand bone_meal run function rmf:bg/grinding/bone_meal
# Bone
execute as @a[predicate=rmf:grinded_item,scores={rmf.grindingCooldown=0}] if items entity @s weapon.mainhand bone run function rmf:bg/grinding/bone
# Clear the advancement to be able to run the function again
advancement revoke @s only rmf:bg/grinded_item