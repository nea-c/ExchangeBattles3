#スキル6


scoreboard players add @s value 1

scoreboard players operation #- team_number = @s team_number


execute as @a unless score @s team_number = #- team_number run particle dust 1 0.5 0 2 ~ ~ ~ 0.05 0.05 0.05 0 1 force @s
execute as @a if score @s team_number = #- team_number run particle dust 0 1 1 2 ~ ~ ~ 0.05 0.05 0.05 0 1 force @s

particle minecraft:sneeze ~ ~ ~ 0.2 0.2 0.2 0.1 5 force
#particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.05 0.05 0.05 0 1 force


scoreboard players reset #-


execute positioned ^ ^ ^0.5 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.325 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.25 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.125 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.5 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] run tag @s add hit-block
execute if entity @s[tag=hit-block] run scoreboard players set @s value 100000
execute if entity @s[tag=hit-block] run tag @s remove hit-block


execute unless score @s value matches 35.. positioned ^ ^ ^0.5 run function ex3:items/skill/0006/chase/notice
