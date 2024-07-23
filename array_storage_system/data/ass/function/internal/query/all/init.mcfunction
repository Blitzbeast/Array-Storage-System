## Query : return array elements matching the data filter

# define query-specific settings
# None for this type of query

# Copy array and reset "matches" bool for all elements
$data modify storage ass:query root.result set from storage ass:main root.$(array)
data modify storage ass:query root.result[].internal.matches set value 0b

# Format result storage
# None for this type of query

# Run query function (no loop for this type of query)
function ass:internal/query/all/run with storage ass:query root