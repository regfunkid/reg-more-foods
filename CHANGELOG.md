# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project *loosely* adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).
The main difference is that the MAJOR.MINOR.PATCH system doesn't change the MAJOR indicator, as most version changes are NOT backwards compatible and the MINOR indicator will increase regardless of if that version can be played in an earlier update.
However, if the version update is a bug fix/patch/update that does NOT change the resourcepack or datapack format, and does NOT otherwise add anything, then the PATCH indicator will be updated accordingly.
TL;DR: This pretty much follows Mojang's update structure for Minecraft updates.

Anything noted as (Undocumented) is because I didn't write down the change at that time and can't remember what was added/removed/edited. Sorry.

Update numbers are written in YYYY/MM/DD format.

## [1.2.1] - 2024-12-14

### Added
#### Foods
- Added Monster Purée (Admin Item)
  - It functions identially to Monster Mash, however it applies Hunger 255 instead of Hunger 100 when consumed. Nothing else has been changed
    - Despite the texture appearing to be in a bowl, consuming the item gives nothing back to the player except immediate starvation
  - It was added for me to test and work on the data pack easier, since having to reset my hunger bar repeatedly with regular Monster Mash was slow and annoying. Which is funny, because that's why Monster Mash was added in the first place
  - The Item's ID is `rmf:monster_puree` if you wish to spawn it in
- Added Plain Muffins
- Added Sweet Berry Muffins
- Added Glow Berry Muffins
  - Muffins were added as an alternative to Donuts. Despite this, they both share the same Hunger Points and Saturation values
  - Muffins and Donuts also share the same ingredients, just placed in different areas of the Crafting Grid
- Added Cupcakes
- Added Chocolate Cupcakes
  - Rather than creating Glazed Muffins, using Milk and Sugar in a Muffin recipe (or Milk and Cocoa Beans) will instead create Cupcakes
  - Cupcakes restore 4 Hunger Points and 6 Saturation, and can be eaten at any time
  - Cupcakes also share effects and values with Glazed Donuts
- Added Soy Milk Buckets
  - A Soy Milk Bucket functions identically to a Milk Barrel, meaning it can be used in any recipe that would use Milk. The only difference is that it does not use ingredients obtained from animals, and is a little more expensive to stock up on
  - It can be crafted from 3 Wheat Seeds, a Water Bucket, a Paper (for filtering), Vegetable Oil, and a Bucket
  - Consuming Soy Milk also clears all effects from the player like Milk would
- Added Coconut Milk Buckets
  - Just like Soy Milk Buckets, Coconut Milk can be used in any recipe that requires Milk and functions exactly like Milk does
  - It is crafted in a Shaker Cup by adding Water, Sugar, and 2 Coconut Mash. It must be placed in a Bucket rather than a Glass Bottle
  - Consuming Coconut Milk will clear all effects from the player like Milk would
- Added Bone Stock
  - Bone Stock (technically a Bone *Broth*) is designed to be an early game food source that players can reliably drink while they obtain items for better foods. The only ingredients required are a Bone and a Bowl--from there, players can use a number of vegetables or meat to craft the item
    - Despite sounding like a drink when consumed, Bone Stock is actually a Side Dish
  - When consumed, there is a 40% chance for the player to reobtain the Bone used to craft the item
  - Consuming the item restores 5 Hunger Points and 6 Saturation
#### Items
- The Gourmand's Digest is now fully implimented into the data pack
  - It functions as an in-game wiki, and can be used to look up any item's recipe and stats
  - An important note is that the actual online wiki for Reg's More Foods has everything about an item included--the Gourmand's Digest will ONLY keep relevant information a regular player will need to know
    - That means that the Gourmand's Digest will *not* include information such as the `item_id` of items and foods, but instead only have surface level info like its recipe, nutrition/saturation, ingredients, any special effects it may grant, or any other item-specific information
  - The Cookbook does not show the names of ingredients for any foods, nor how to obtain them--rather, it's there to show the player what is needed so they can either look for the item in the Cookbook itself or use the information to obtain the crafting recipe for the Recipe Book
    - The ingredients shown in the Cookbook's recipe images may not be exactly what is required for the recipe. It's instead a guide to show players what they should be looking out for
  - The book will not show how to obtain any advancements--there is a built-in menu for this in Minecraft, so there's no need to include it in the book
  - Due to how many pages (and data) the book has, it does not spawn with players when they join a world. However, when players first join a world with Reg's More Foods installed, they will be given the recipe for the Cookbook automatically
  - Also due to how it's coded, any additional pages added to the cookbook from this point on will *not* be in order. This means that players will be unable to flip through pages manually in the book and have anything make sense, they'll have to utilize the buttons on the item icons
  - A very important note is that the Cookbook is sadly NOT translatable due to the nightmare of having to account for the extra spaces added or removed by the changing of spelling and text which could shift the page. In other words, the Cookbook is completely written in English, and will not be translated into other languages
- The Mortar & Pestle can now be used on Dye Recipes and some 1-Ingredient recipes to double their results
  - Some examples are using Bones to make Bone Meal, Sugar Cane to make Sugar, or Poppies to make Red Dye
#### Advancements
4 new advancements have been added in this update:
- "Crafting With Extra Steps" for crafting a Torch by burning a Charcoal on a Stick
- "Alternative Dairy Options" for obtaining either Soy Milk or Coconut Milk
- "Makes Perfect Sense" for crafting a Sponge block from Cheese
- "A Bountiful Harvest" for mining Wheat or Tomatoes with a Hoe to increase its drops
#### Misc
- Added a system for detecting if Reg's More Foods is running in the correct version
  - If it is, nothing will change
  - If it isn't, a message will be sent to every player who joins the world/server informing them that they're playing the wrong version for the data pack. It will only be displayed once per player
    - It's up to the world/server owner to change the data pack to the correct version if they wish. Otherwise... well, don't stare directly at the bugs
- Added a new item tag for vegetables (`#rmf:vegetables`)
  - This tag will be used in future recipes that require vegetables to make it easier to assemble the recipe (Tofu is included in this list)
- Added a new item tag for ingredients that can be used to craft Stock (`#rmf:stock_ingredients`)
  - This one was created due to the limitation that I couldn't have two different item tags occupy the same ingredient slot in a crafting recipe, so I just manually put them both together. But others can edit it in an addon packs if they wish
- Added a new damage type tag for items that ignore taking damage from Cactus (`#rmf:ignores_cactus`)
  - This was added specifically for Prickly Pears, but others can use it if they wish
- Added a `give_item` entry for Chef's Hats
  - Turns out I forgot to add one when I added them originally. Whoops!
- Added a line of text that displays when a new Reg's More Foods version is loaded, which tells players what's new to that version
### Changed
#### Foods
- Chicken Parmesan now takes 2 seconds to eat (from 3.22)
- Lasagna has been changed a bit:
  - It has been renamed to "Bowl Of Lasagna"
  - It now requires 1 Bowl in its recipe, replacing the bottom "raw meat" ingredient
  - Consuming it now grants the player back a bowl
  - The texture of the item has been updated (finally)
  - The recipe is now granted if a player obtains Pasta
- Tomato Sauce now restores 6 Hunger Points (from 5)
- Glow Filled Donuts now have a distinct name
- Glow Berry Cookies now have a distinct name
- Changed French Toast slightly:
  - Updated the texture to look like a piece of actual Toast
  - Updated the recipe to give 2 Pieces of French Toast (from 1)
- Updated several recipes that use Milk to also allow for Soy Milk
- Updated the recipe for Ramen
  - Ramen now uses any Leaves, a carrot, or Dried Kelp instead of specifically requiring Dried Kelp
  - Ramen now requires 3 Bowls to craft, but gives 3 Bowls of Ramen in return
  - Ramen now requires 2 Pasta to craft instead of Wheat
  - Ramen can now be crafted using either Raw/Cooked Porkchops or Beef
- Prickly Pears no longer take damage (and get deleted) when touching Cactus
- The recipe for Honey Garlic Chicken is now shapeless
- The recipe for Hot Cocoa is now shapeless
- Bottles of Coffee now grant Resistance II (from Resistance I)
- Bottles of Tea now grant Haste II (from Haste I)
  - I made both of these changes because I felt like the current levels of Resistance and Haste didn't really do anything. Hopefully, they'll be more worth crafting now
#### Items
- The Chef's Hat now has a max stack size of 1 (from 64)
  - It was supposed to stack to 1 when I added it but I missed that, sorry!!!! XP
#### Advancements
- The recipe for Filled Donuts is now only granted when obtaining either Sweet Berries or Glow Berries
- The recipe for Glazed Donuts is now only granted when obtaining either Milk or Sugar
- The "Drinkoholic" advancement no longer requires consuming Yogurt
  - I've decided that Yogurt isn't more of food than it is a drink-- it's actually LESS of a drink than it is a food. I prefer the idea of putting Yogurt in your mouth and letting it dissolve in your mouth rather than intentionally gulping it down like it's a liquid. It's like Honey, but less... viscous
- The "Drinkoholic" advancement now requires consuming Soy Milk
- The "Soy To The Rescue!" advancement now accepts crafting either Tofu or Soy Milk
  - The description of the advancement has been edited to represent this change
- Updated "The Gourmand" advancement
- Changed the conditions for obtaining the "Gourmand's Digest" advancement
  - It now checks for any item that has the "cookbook" `item_model` tag, making it easier for me to update the cookbook in the future without breaking stuff
#### Data & Misc
- Edited the Uninstall function slightly
  - The main change is it will no longer uninstall itself via `/datapack disable`
    - This is because players using Reg's More Foods in a modpack wouldn't be able to use the uninstall command and then remove it from the modpack, since the command would end up re-enabling the datapack
	- What server owners/modertators can do now is run `/function rmf:_config/uninstall` to uninstall the datapack, then manually remove the pack from the world folder. If you're playing the modded version, do the same thing but disable/remove the mod from your modloader
- Replaced the vanilla Beetroot Soup recipe and recipe advancement with an RMF version
  - The same way Rabbit Stew has been replaced, so has Beetroot Soup
- Edited the `CHANGELOG.md` file to only show the most recent Changelog
  - This is just to help people not be confused when they look at the file, but you can always see all the changelogs by looking up the version number on the [wiki](https://github.com/regfunkid/reg-more-foods/wiki/).
- Edited the Mortar & Pestle, Shaker Cup, and Marshmallow Cooking code to not remove the ingredient used if the player is in Creative Mode
- Added a recipe for crafting Sponge blocks (it makes sense i promise)
- Updated the `load.mcfunction` file
- Updated the `tick.mcfunction` file
- Moved the Cleaver and Chef's Hat to the "Equipment" crafting tab
### Config
- Introduced **Admin Items**!
  - Admin Items can only be obtained using the `rmf:give_item` command, and have no affect on Advancements
  - The... usefulness of Admin Items ranges from item to item, but more will come with each update. Admin Items will tend to be more on the joke-addition side of things, however
  - Seeing as Admin Items will tend to be joke suggestions or non-serious ideas, it should be obvious that using any Admin Item in Hardcore Mode will not be a good idea
  - They will also have text at the bottom of the tooltip showing that they're an Admin Item, as well as custom descriptions
    - This is so everyone who keeps asking me for stupid suggestions can see them *technically* added to the game. For example, someone asked me to add "Radioactive Waste" to the datapack. So expect to see that in the next update or two
- Added a function that removes all recipes, to mirror the one that adds them
  - It can be called with `rmf:_config/take_all_recipes`
- Added a function for resetting all player scores
  - It can be called with `rmf:_config/reset_all_scores`
  - It exists to hopefully fix any errors a player may encounter, like not being able to use the Mortar & Pestle. It otherwise functions like the `/reload` command without actually reloading the datapack
### Removed
- Removed the "fix items" functions
  - Any old items still lingering in worlds will no longer be automatically upgraded to newer RMF versions. If your world still has said items at the time of this release, just throw them in lava or something
    - That being said, it's been at least a month since the update has released, so SURELY people aren't jumping from v1.1.2 to v1.2.1 right? You guys are totally downloading these updates in order, right? Right.
  - The `fix` function folder will remain in the datapack incase I need to update any items in the future (like how this patch fixes the Cookbook from the last few updates)
### Fixes
- [RMF-29](https://github.com/regfunkid/reg-more-foods/issues/29): Foods from other data packs that use Poisonous Potatoes as dummy items get replaced with Tofu
- [RMF-30](https://github.com/regfunkid/reg-more-foods/issues/30): The Lasagna recipe can't be granted to players unless they craft it manually
- [RMF-32](https://github.com/regfunkid/reg-more-foods/issues/32): The Mortar & Pestle doesn't work
- [RMF-33](https://github.com/regfunkid/reg-more-foods/issues/33): Rabbits foot replaced with Bucket of Milk 
