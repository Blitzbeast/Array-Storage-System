## Create data element in specified index and mark them as alive

# Initialize and run internal/single function targeting the slot to reset
$data modify storage ass:function root.populate.array set value $(array)
$data modify storage ass:function root.populate.selectedIndex set value $(startIndex)
$data modify storage ass:function root.populate.startIndex set value $(startIndex)
$data modify storage ass:function root.populate.lastIndex set value $(lastIndex)
$data modify storage ass:function root.populate.indexValue set value $(startIndex)
data modify storage ass:function root.populate.internalFormat set from storage ass:settings root.internalFormat
data modify storage ass:function root.populate.dataFormat set from storage ass:settings root.dataFormat
function ass:internal/action/populate/start with storage ass:function root.populate

# Reset storage
data modify storage ass:function root.populate set value {}