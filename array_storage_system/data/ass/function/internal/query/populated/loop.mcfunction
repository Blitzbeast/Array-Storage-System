#> Query loop : cycle through the array following defined conditions

# Increment counter for each element added
scoreboard players add ass.resultsCount ass.temp 1
data modify storage ass:query root.result append from storage ass:temp root.copy[-1].internal.index
# Delete processed element
data remove storage ass:temp root.copy[-1]
# Loop if copied array isnt empty and results limit is is not reached
execute if score ass.resultsCount ass.temp < ass.resultsLimit ass.temp if data storage ass:temp root.copy[0] run function ass:internal/query/populated/loop