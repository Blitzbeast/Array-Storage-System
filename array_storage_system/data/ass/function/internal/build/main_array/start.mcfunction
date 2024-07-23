## Entry-point for A.S.S array creation process

# Restore target array to an empty state
$data modify storage ass:main root.$(name) set value []

# Init storage and scores
scoreboard players set ass.i ass.temp 0
$scoreboard players set ass.size ass.settings $(size)
data modify storage ass:temp root.build_main_array set value {maxCommandChainLength:null}
# Change data format in settings storage
$data modify storage ass:settings root.dataFormat set value $(data)
# Copy general settings to build_array storage
data modify storage ass:function root.create_array.dataFormat set from storage ass:settings root.dataFormat
data modify storage ass:function root.create_array.internalFormat set from storage ass:settings root.internalFormat

# Error handling
execute if score ass.size ass.settings matches ..0 if data storage ass:settings root{broadcastError:1b} run tellraw @a ["",{"text":"[A.S.S]","color":"gold"},{"text":" Error : cannot create an array of size smaller than 1.","color":"red"}]
execute if score ass.size ass.settings matches ..0 run return -1

# Temporarily increase the maximum command chain length to ensure the array will have the required size
function ass:internal/other/maximize_command_chain
# Run loop here
execute store result storage ass:temp root.returnValue int 1.0 run return run function ass:internal/build/main_array/loop with storage ass:function root.create_array
# Save real array size
$execute store result score ass.size ass.settings run data get storage ass:main root.$(name)
execute store result storage ass:settings root.arraySize int 1.0 run scoreboard players get ass.size ass.settings
# Reset command chain length here
function ass:internal/other/reset_command_chain with storage ass:temp root