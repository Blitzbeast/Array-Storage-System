## Start the array creation process for the user

# Required parameter : compound or list representing the data being stored (limit apparently is 66665 element)
$data modify storage ass:function root.create_array set value {name:$(name), size:$(size), data:$(data)}
function ass:internal/build/main_array/start with storage ass:function root.create_array