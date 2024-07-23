[Array Storage System (A.S.S) quickstart guide]

this datapack allows the user to create arrays of custom data and interact with it.

At current version 0.0.1 the features are :
- creating an array with a custom format
- manually populating or killing specific indexes (include ranges)
- querying array for which slot contain given data
- Basic settings control

All actions the user is intended to take are located in the ass:public namespace,
the ass:internal namespace isnt intended for direct user interaction.

How to use setup an array :
/function ass:public/action/create_array {name:NAME, size:SIZE, data:DATA}

How to populate elements :
/function ass:public/action/populate {startIndex:X, lastIndex:Y}
- an element that has not been populated cannot be interacted with by the user
- setting both to the same value will only populate 1 element

How to free an element :
/function ass:public/action/kill {array:NAME, startIndex:X, lastIndex:Y}
- remove the populated flag, reset the data element to its default value
- setting both to the same value will only kill 1 element

How to modify data in element
/function ass:public/action/change_data {index:I, path:PATH, value:VALUE}
- Only works in populated elements
- PATHis processed inside data coumpound : {data:{PATH}}

How to query data from the array :
/function ass:public/action/query/start {queryType:TYPE, array:ARRAY, startIndex:X, stopIndex:Y, resultsLimit:Z, value:DATA}
- DATA usually is a compound or list containing the data, setting it to {} will returns any populated element
- if TYPE do not match a predefined type nothing will happen
- Certain query types (such as first or last) override some inputs for their behaviour to work, you can use "all"
to have all your settings untouched

/////// /function ass:public/action/create_array {name:test, size:4096, data:{uuid0:null, uuid1:[], test:1}}