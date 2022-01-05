scoreboard players add #distance value 1
execute unless block ~ ~ ~ #ex3:like_air run tag @s add not_air
execute if entity @s[tag=!not_air] unless entity @s[distance=..0.1] positioned ^ ^ ^0.1 run function ex3:general/get_distance/air-check/1