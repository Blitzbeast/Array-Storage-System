## Reset element data at specified index to the value defined when the array was created and mark it "unused"

# Initialize and run function targeting the slots to reset
$data modify storage ass:function root.kill.array set value $(array)
$data modify storage ass:function root.kill.selectedIndex set value $(startIndex)
$data modify storage ass:function root.kill.startIndex set value $(startIndex)
$data modify storage ass:function root.kill.lastIndex set value $(lastIndex)
$data modify storage ass:function root.kill.indexValue set value $(startIndex)
data modify storage ass:function root.kill.internalFormat set from storage ass:settings root.internalFormat
data modify storage ass:function root.kill.dataFormat set from storage ass:settings root.dataFormat
function ass:internal/action/kill/start with storage ass:function root.kill

# Reset storage
data modify storage ass:function root.kill set value {}