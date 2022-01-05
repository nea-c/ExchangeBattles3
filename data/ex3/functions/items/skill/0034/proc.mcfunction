data modify entity @s NoGravity set value 0b
scoreboard players add @s value 1
execute unless data entity @s {OnGround:1b} run particle minecraft:dust 0 0 0 0.5 ~ ~0.3 ~ 0 0 0 0 1 force @a
execute if score @s value matches 80.. run function ex3:items/skill/0034/explode
