## Query : return unused array element

# define query-specific settings
scoreboard players set ass.resultsCount ass.temp 0
$scoreboard players set ass.resultsLimit ass.temp $(resultsLimit)

# Copy array and reset "matches" bool for all elements
$data modify storage ass:temp root.copy set from storage ass:main root.$(array)
data modify storage ass:temp root.copy[].internal.matches set value 0b

# Format result storage
data modify storage ass:query root.result set value []

# Keep only unused elements
data modify storage ass:temp root.copy[{internal:{alive:1b}}].internal.matches set value 1b
data remove storage ass:temp root.copy[{internal:{matches:0b}}]

# Go to query loop setup
function ass:internal/query/populated/loop