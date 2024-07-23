## Populate : create array elements in specified index(es)

# Init storage and scores for loop function
$scoreboard players set ass.i ass.temp $(startIndex)
$scoreboard players set ass.last_index ass.temp $(lastIndex)

# Init next function storage
$data modify storage ass:function root.replace_element.array set value $(array)
$data modify storage ass:function root.replace_element.selectedIndex set value $(startIndex)
$data modify storage ass:function root.replace_element.indexValue set value $(startIndex)
data modify storage ass:function root.replace_element.internalFormat set from storage ass:function root.populate.internalFormat
data modify storage ass:function root.replace_element.dataFormat set from storage ass:function root.populate.dataFormat

# Run loop function
function ass:internal/action/populate/loop with storage ass:function root.replace_element