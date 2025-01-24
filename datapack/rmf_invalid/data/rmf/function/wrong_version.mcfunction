# This function will only load if the data pack detects its been loaded in the wrong game version. 
# Future versions of Reg's More Foods will have this system in place!
tellraw @s [{"text":"[RMF Config]", "color":"yellow"}," ",{"translate":"rmfcommands.invalid_version","color":"red"}]