execute if data storage random: data.min store result score #random value run data get storage random: data.min 1000
execute if data storage random: data.max store result score #random value2 run data get storage random: data.max 1000

data remove block 0 0 0 Items[]
execute if data storage random: data.min if data storage random: data.max run loot replace block 0 0 0 container.0 loot ex3:general/random

scoreboard players reset #random
data remove storage random: data

data get block 0 0 0 Items[0].tag.AttributeModifiers[{Name:"random"}].Amount 0.001