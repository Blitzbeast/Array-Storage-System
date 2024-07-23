## Create data element in specified index and mark them as alive

# Replace element with default template of the array
function ass:internal/action/replace_element with storage ass:function root.replace_element
# Change alive flag
$data modify storage ass:main root.$(array)[$(selectedIndex)].internal.alive set value 1b
# Update data compound if needed
$data modify storage ass:main root.$(array)[$(selectedIndex)] merge value {data:$(dataFormat)}

# Iterate until max index is reached
scoreboard players add ass.i ass.temp 1
execute store result storage ass:function root.replace_element.selectedIndex int 1.0 run scoreboard players get ass.i ass.temp
data modify storage ass:function root.replace_element.indexValue set from storage ass:function root.replace_element.selectedIndex
execute if score ass.i ass.temp <= ass.last_index ass.temp run function ass:internal/action/populate/loop with storage ass:function root.replace_element