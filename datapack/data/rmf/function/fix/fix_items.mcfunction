# This function was created to automatically update any player's items from previous updates that have had their stats changed. The bulk of the items have been upgraded, so for now it only exists to upgrade items on a need-to-do basis
#
# Version 1.2.1: Upgrade old cookbooks to new version
execute as @a if items entity @s inventory.* minecraft:written_book[minecraft:custom_data={item_id:fraudbook}] run function rmf:fix/cookbook
execute as @a if items entity @s hotbar.* minecraft:written_book[minecraft:custom_data={item_id:fraudbook}] run function rmf:fix/cookbook