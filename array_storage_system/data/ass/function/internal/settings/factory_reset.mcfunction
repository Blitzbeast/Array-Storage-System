## Reset all data to base values

# Change array size to default
scoreboard players set ass.size ass.settings 32

# Reset settings storage
function ass:internal/settings/reset_settings

# Reset the value storing the issue of the last function called (if set)
data modify storage ass:temp root set value {returnValue:null, queryResult:null}

# Create a brand new array for a complete factory reset :)
function ass:internal/build/main_array/start