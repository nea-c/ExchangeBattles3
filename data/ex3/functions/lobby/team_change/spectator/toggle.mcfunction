execute if score #no_team_change value matches 1 run function ex3:lobby/team_change/failed

execute unless score #no_team_change value matches 1 run tag @s add tmp.1

execute if entity @s[tag=tmp.1,team=] run tag @s add tmp.2
execute if entity @s[tag=tmp.1,team=!] run tag @s add tmp.3

execute if entity @s[tag=tmp.2] run function ex3:lobby/team_change/spectator/change
execute if entity @s[tag=tmp.3] run function ex3:lobby/team_change/spectator/execution_complete

execute if entity @s[tag=tmp.1] run tag @s remove tmp.1
execute if entity @s[tag=tmp.2] run tag @s remove tmp.2
execute if entity @s[tag=tmp.3] run tag @s remove tmp.3