## Create all the data required for the pack to function

tellraw @a ["",{"text":"[A.S.S]","color":"gold"},{"text":" Datapack is being installed.","color":"yellow"}]

# Create scoreboards
scoreboard objectives add ass.settings dummy
scoreboard objectives add ass.temp dummy

# Create storage spaces
data modify storage ass:settings root set value {}
data modify storage ass:query root set value {}
data modify storage ass:function root set value {}
data modify storage ass:temp root set value {}

# Define base datapack settings
data modify storage ass:settings root.installed set value 1b


# !!!!! Using both storage and score may be harmful, be sure of the format to follow before adding other similar functions !!!!!
function ass:public/action/settings/change/broadcast_error {value:1b}


data modify storage ass:settings root.version set value "0.1.0"

# Initialize storage, settings and scoreboard to default values
function ass:internal/settings/factory_reset

tellraw @a ["",{"text":"[A.S.S]","color":"gold"},{"text":" Installation completed ! Running version ","color":"yellow"},{"storage":"ass:settings","nbt":"root.version","color":"white"}]