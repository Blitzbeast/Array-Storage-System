## Start array query process

# Initialize generic query settings
$data modify storage ass:query root set value {queryType:$(queryType),\
                                              array:$(array),\
                                              resultsLimit:$(resultsLimit),\
                                              dataFilter:{$(value)}}

# Run specified query request if $(queryType) matches an existing one
execute if data storage ass:query root{queryType:"all"} run function ass:internal/query/all/init with storage ass:query root
execute if data storage ass:query root{queryType:"populated"} run function ass:internal/query/populated/init with storage ass:query root
execute if data storage ass:query root{queryType:"unused"} run function ass:internal/query/unused/init with storage ass:query root