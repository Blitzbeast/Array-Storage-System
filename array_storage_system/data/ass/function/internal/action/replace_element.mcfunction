## This function replace the whole element with one matching current settings

# Store data about current element
$execute store result score ass.this.index ass.temp run data get storage ass:main root.$(array)[$(selectedIndex)].internal.index 1.0

# Replace element at index with base format
$data modify storage ass:main root.$(array)[$(selectedIndex)] set value {internal:$(internalFormat), data:{}}
# Insert data format based on settings
$execute unless data storage ass:settings root{fillUsedElementOnly:1b} run data modify storage ass:main root.$(array)[$(selectedIndex)] merge value {data:$(dataFormat)}

# Initialize index value of that element
$data modify storage ass:main root.$(array)[$(selectedIndex)].internal.index set value $(indexValue)