#スキル29

scoreboard players add @s value 1

scoreboard players operation #- team_number = @s team_number


execute as @a unless score @s team_number = #- team_number run particle dust 1 0.5 0 1 ~ ~ ~ 0.05 0.05 0.05 0 6 force @s
execute as @a if score @s team_number = #- team_number run particle dust 0 1 1 1 ~ ~ ~ 0.05 0.05 0.05 0 6 force @s

particle minecraft:dust 1 1 1 2 ~ ~ ~ 0.05 0.05 0.05 0 2 force
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 1 force



execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,scores={max_health=0..}] positioned ~0.5 ~0.5 ~0.5 if entity @s[dx=0] unless score @s team_number = #- team_number run tag @s add hit
execute if entity @e[tag=hit,limit=1] run tag @s add end--

execute positioned ^ ^ ^0.2 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.1 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.2 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] run tag @s add hit-block
execute if entity @s[tag=hit-block] as @e[scores={max_health=0..},distance=..2.5] unless score @s team_number = #- team_number run tag @s add hit
execute if entity @s[tag=hit-block] run tag @s add end--
execute if entity @s[tag=hit-block] run tag @s remove hit-block
execute if entity @e[tag=hit,limit=1] run function ex3:items/skill/0029/hit

scoreboard players reset #-

execute if score @s value2 matches 1..20 if score @s value matches 35.. run tag @s add end--
execute if score @s value2 matches 21..40 if score @s value matches 40.. run tag @s add end--
execute if score @s value2 matches 41..60 if score @s value matches 50.. run tag @s add end--
execute if score @s value2 matches 61..80 if score @s value matches 60.. run tag @s add end--
execute if score @s value2 matches 81..100 if score @s value matches 70.. run tag @s add end--

execute unless entity @s[tag=end--] run teleport @s ^ ^ ^0.2 ~ ~
execute if entity @s[tag=end--] run function ex3:items/skill/0029/experiment


#execute unless entity @s[tag=end--] positioned ^ ^ ^0.2 run function ex3:items/skill/0029/proc
