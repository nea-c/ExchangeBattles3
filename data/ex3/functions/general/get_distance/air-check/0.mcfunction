scoreboard players set #distance value 0
summon marker ~ ~ ~ {Tags:["distance"]}
tp @e[tag=distance,limit=1] ~ ~ ~ facing entity @s feet

execute at @e[tag=distance,limit=1] run function ex3:general/get_distance/air-check/1

execute if entity @s[tag=not_air] run scoreboard players set #distance value -1
execute if entity @s[tag=not_air] run tag @s remove not_air

kill @e[tag=distance,limit=1]
