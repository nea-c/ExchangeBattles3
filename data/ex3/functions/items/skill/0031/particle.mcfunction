#スキル31

scoreboard players add @s value2 1

execute if score @s jump_achievement matches 1 run particle dust 1 0 0 1 ~ ~ ~ 0.5 0.3 0.5 0 1 force @a
execute unless score @s jump_achievement matches 1 run particle dust 0 0 0 1 ~ ~ ~ 0.5 0.3 0.5 0 1 force @a

execute unless score @s value2 matches 3.. positioned ^ ^ ^3 run function ex3:items/skill/0031/particle
execute if score @s value2 matches 3.. run scoreboard players reset @s value2

