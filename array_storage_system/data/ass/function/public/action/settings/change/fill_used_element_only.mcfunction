# Change target setting to defined value

# Verify passed value matches possible inputs
$scoreboard players set ass.s ass.temp $(value)
execute unless score ass.s ass.temp matches 0..1 run tellraw @a ["",{"text":"[A.S.S]","color":"gold"},{"text":" Error : \"fillUsedElementOnly\" value must be 0 or 1.","color":"red"}]
execute unless score ass.s ass.temp matches 0..1 run return -1

# Update target setting
$data modify storage ass:settings root.fillUsedElementOnly set value $(value)b
#$scoreboard players set ass.fill_used_element_only ass.settings $(value)