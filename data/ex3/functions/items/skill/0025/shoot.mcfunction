execute at @s positioned ^ ^ ^0.2 unless entity @e[tag=wall_entity,limit=1,dx=0] if block ~ ~ ~ #ex3:like_air run tp @s ^ ^ ^0.2
execute at @s positioned ^ ^ ^0.1 unless entity @e[tag=wall_entity,limit=1,dx=0] if block ~ ~ ~ #ex3:like_air run tp @s ^ ^ ^0.1
execute at @s positioned ^ ^ ^0.05 unless entity @e[tag=wall_entity,limit=1,dx=0] if block ~ ~ ~ #ex3:like_air run tp @s ^ ^ ^0.05
execute at @s positioned ^ ^ ^0.0025 unless entity @e[tag=wall_entity,limit=1,dx=0] if block ~ ~ ~ #ex3:like_air run tp @s ^ ^ ^0.025
execute at @s positioned ^ ^ ^0.0125 unless entity @e[tag=wall_entity,limit=1,dx=0] if block ~ ~ ~ #ex3:like_air run tp @s ^ ^ ^0.0125
execute at @s positioned ^ ^ ^0.00625 unless entity @e[tag=wall_entity,limit=1,dx=0] if block ~ ~ ~ #ex3:like_air run tp @s ^ ^ ^0.00625
execute at @s positioned ^ ^ ^0.00625 unless entity @e[tag=wall_entity,limit=1,dx=0] if block ~ ~ ~ #ex3:like_air run tp @s ^ ^ ^0.00625

execute at @s unless block ~ ~ ~0.01 #ex3:like_air run tag @s add deploy
execute at @s unless block ~ ~ ~-0.01 #ex3:like_air run tag @s add deploy
execute at @s unless block ~ ~0.01 ~ #ex3:like_air run tag @s add deploy
execute at @s unless block ~ ~-0.01 ~ #ex3:like_air run tag @s add deploy
execute at @s unless block ~0.01 ~ ~ #ex3:like_air run tag @s add deploy
execute at @s unless block ~-0.01 ~ ~ #ex3:like_air run tag @s add deploy

execute at @s positioned ~ ~ ~0.01 if entity @e[tag=wall_entity,limit=1,dx=0] run tag @s add deploy
execute at @s positioned ~ ~ ~-0.01 if entity @e[tag=wall_entity,limit=1,dx=0] run tag @s add deploy
execute at @s positioned ~ ~0.01 ~ if entity @e[tag=wall_entity,limit=1,dx=0] run tag @s add deploy
execute at @s positioned ~ ~-0.01 ~ if entity @e[tag=wall_entity,limit=1,dx=0] run tag @s add deploy
execute at @s positioned ~0.01 ~ ~ if entity @e[tag=wall_entity,limit=1,dx=0] run tag @s add deploy
execute at @s positioned ~-0.01 ~ ~ if entity @e[tag=wall_entity,limit=1,dx=0] run tag @s add deploy

execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,scores={max_health=0..}] unless score @s team_number = #- team_number run tag @e[tag=this,tag=!deploy,limit=1] add deploy
execute at @s as @e[scores={max_health=0..},distance=..1] unless score @s team_number = #- team_number run tag @e[tag=this,tag=!deploy,limit=1] add deploy

execute at @s run particle dust_color_transition 1 1 1 2 0.157 0.067 0.373 ~ ~ ~ 0 0 0 0 1 force @a
#execute at @s run particle dust 0.533 0.216 0.616 1 ~ ~ ~ 0 0 0 0 1 force @a

scoreboard players remove #tmp value 1

execute if entity @s[tag=!deploy] if score #tmp value matches 1.. run function ex3:items/skill/0025/shoot