#スキル32

scoreboard players add @s value2 1
scoreboard players add @s jump_achievement 1

scoreboard players operation #- number = @s number
scoreboard players operation #- team_number = @s team_number

execute positioned ^ ^ ^0.5 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.325 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.25 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.125 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.5 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] run tag @s add hit-block
execute if entity @s[tag=hit-block] run tag @s add end--
execute if entity @s[tag=hit-block] run scoreboard players add @s jump_achievement 100000
execute if entity @s[tag=hit-block] run tag @s remove hit-block



execute if score @s value2 matches 14.. run tag @s add end--



execute if score @s jump_achievement matches 1 as @a unless score @s team_number = #- team_number run particle dust 1 0.5 0 0.6 ~ ~ ~ 0.05 0.05 0.05 0 1 force @s
execute if score @s jump_achievement matches 1 as @a if score @s team_number = #- team_number run particle dust 0 1 1 0.6 ~ ~ ~ 0.05 0.05 0.05 0 1 force @s
execute if score @s jump_achievement matches 1 run particle minecraft:dust 0.8 0.8 0.8 .7 ^ ^ ^ 0 0 0 0 1 force
execute if score @s jump_achievement matches 3.. run scoreboard players set @s jump_achievement 0

scoreboard players reset #-

execute unless entity @s[tag=end--] positioned ^ ^ ^0.5 run function ex3:items/skill/0032/front-p
execute if entity @s[tag=end--] run scoreboard players reset @s jump_achievement
execute if entity @s[tag=end--] run scoreboard players reset @s value2
execute if entity @s[tag=end--] run tag @s remove end--

