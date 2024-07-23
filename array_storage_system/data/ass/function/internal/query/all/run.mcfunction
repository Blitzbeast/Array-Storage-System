#> Query loop : Return elements matching filter

# Search
$data modify storage ass:query root.result[{data:$(dataFilter)}].internal.matches set value 1b
data remove storage ass:query root.result[{internal:{matches:0b}}]