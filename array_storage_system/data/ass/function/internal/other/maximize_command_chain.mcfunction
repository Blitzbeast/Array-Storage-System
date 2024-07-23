## Temporarily change command chain length to a really high value

# Temporarily increase the maximum command chain length to ensure the array will have the required size (max 1M commands).
execute store result storage ass:temp root.maxCommandChainLength int 1.0 run gamerule maxCommandChainLength
gamerule maxCommandChainLength 1000000