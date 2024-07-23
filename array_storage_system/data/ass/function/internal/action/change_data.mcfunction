## Change data : update the data at given path

# Abort function if element is not populated
$execute unless data storage ass:main root.$(array)[$(index)].internal{alive:1b} run return fail

# Modify index data
$data modify storage ass:main root.$(array)[$(index)].data.$(path) set value $(value)