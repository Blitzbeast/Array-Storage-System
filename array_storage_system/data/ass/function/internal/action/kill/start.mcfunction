## Kill : reset element data at specified index to the value defined when the array was created and mark it "unused"

# Init storage and scores for loop function
$scoreboard players set ass.i ass.temp $(startIndex)
$scoreboard players set ass.last_index ass.temp $(lastIndex)
$data modify storage ass:function root.replace_element.array set value $(array)
$data modify storage ass:function root.replace_element.selectedIndex set value $(startIndex)
$data modify storage ass:function root.replace_element.indexValue set value $(startIndex)
data modify storage ass:function root.replace_element.internalFormat set from storage ass:settings root.internalFormat
data modify storage ass:function root.replace_element.dataFormat set from storage ass:settings root.dataFormat

# Start kill loop
function ass:internal/action/kill/loop with storage ass:function root.replace_element