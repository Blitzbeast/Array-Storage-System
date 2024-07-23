## Change data of target path to defined value

# Initialize and run function targeting the slot to modify
$data modify storage ass:function root.change_data.array set value $(array)
$data modify storage ass:function root.change_data.index set value $(index)
$data modify storage ass:function root.change_data.path set value $(path)
$data modify storage ass:function root.change_data.value set value $(value)

# Process action
function ass:internal/action/change_data with storage ass:function root.change_data

# Reset storage
data modify storage ass:function root.change_data set value {}