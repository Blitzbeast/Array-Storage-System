# Run stuff required on game (re)load

execute unless data storage ass:settings root{installed:1b} run function ass:internal/settings/install

# Announce pack load if settings says to
execute if data storage ass:settings root{broadcastReload:1b} run tellraw @a ["",{"text":"[A.S.S]","color":"gold"},{"text":" Datapack enabled.","color":"yellow"}]