## Restore all settings to default value

data modify storage ass:settings root merge value {\
                                                broadcastReload:1b,\
                                                broadcastError:1b,\
                                                fillUsedElementOnly:1b,\
                                                version:"",\
                                                arraySize:0,\
                                                index:-1,\
                                                internalFormat:{index:null, alive:0b, matches:0b},\
                                                dataFormat:{},}
# Save back current array size
execute store result score ass.size ass.settings run data get storage ass:main root.array
execute store result storage ass:settings root.arraySize int 1.0 run scoreboard players get ass.size ass.settings