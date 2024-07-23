## add a new index and repeat until wanted size is reached

# Add an empty element to the array
$data modify storage ass:main root.$(name) append value {internal:{}, data:{}}

# Initialize and run replace_element function targeting the newly created slot
data modify storage ass:function root.replace_element.selectedIndex set value -1
execute store result storage ass:function root.replace_element.indexValue int 1.0 run scoreboard players get ass.i ass.temp
data modify storage ass:function root.replace_element.internalFormat set from storage ass:function root.create_array.internalFormat
data modify storage ass:function root.replace_element.dataFormat set from storage ass:function root.create_array.dataFormat
data modify storage ass:function root.replace_element.array set from storage ass:function root.create_array.name
function ass:internal/action/replace_element with storage ass:function root.replace_element

# Iterate until max index (i-1) is reached
scoreboard players add ass.i ass.temp 1
execute if score ass.i ass.temp < ass.size ass.settings run function ass:internal/build/main_array/loop with storage ass:function root.create_array

# If the command reaches this far there are 99.99999% chance that the array got fully created, so we return a sucess
return 1