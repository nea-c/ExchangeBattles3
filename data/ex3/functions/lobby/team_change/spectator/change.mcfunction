
execute store result score #tmp value if entity @a[team=emerald]
execute store result score #tmp value2 if entity @a[team=purpur]
execute if score #tmp value < #tmp value2 run function ex3:lobby/team_change/emerald/execution_complete
execute if score #tmp value > #tmp value2 run function ex3:lobby/team_change/purpur/execution_complete
execute if score #tmp value = #tmp value2 run tag @s add team_random
execute if entity @s[tag=team_random] run data merge storage random: {data:{min:1,max:2.999}}
execute if entity @s[tag=team_random] store result score #tmp value run function ex3:general/random
execute if entity @s[tag=team_random] if score #tmp value matches 1 run function ex3:lobby/team_change/emerald/execution_complete
execute if entity @s[tag=team_random] if score #tmp value matches 2 run function ex3:lobby/team_change/purpur/execution_complete
execute if entity @s[tag=team_random] run tag @s remove team_random

scoreboard players reset #tmp
