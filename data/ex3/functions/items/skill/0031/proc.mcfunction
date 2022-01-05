#スキル31
tag @s add skill31-this
scoreboard players add @s value 1
scoreboard players add @s jump_achievement 1
execute if score @s jump_achievement matches 2.. run scoreboard players reset @s jump_achievement

execute positioned ~ ~0.5 ~ rotated ~ 0 positioned ^ ^ ^2 run function ex3:items/skill/0031/particle
execute positioned ~ ~0.5 ~ rotated ~90 0 positioned ^ ^ ^2 run function ex3:items/skill/0031/particle
execute positioned ~ ~0.5 ~ rotated ~180 0 positioned ^ ^ ^2 run function ex3:items/skill/0031/particle
execute positioned ~ ~0.5 ~ rotated ~270 0 positioned ^ ^ ^2 run function ex3:items/skill/0031/particle
tp @s ~ ~ ~ ~-10 0
execute positioned ~ ~0.5 ~ rotated ~ 0 run particle witch ^ ^0.6 ^11 0.3 0.3 0.3 0 3 normal @a
execute positioned ~ ~0.5 ~ rotated ~180 0 run particle witch ^ ^0.6 ^11 0.3 0.3 0.3 0 3 normal @a

execute if score @s value matches 2 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 0.50
execute if score @s value matches 3 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 0.57
execute if score @s value matches 4 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 0.64
execute if score @s value matches 5 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 0.71
execute if score @s value matches 6 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 0.78
execute if score @s value matches 7 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 0.85
execute if score @s value matches 8 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 0.92
execute if score @s value matches 9 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 0.99
execute if score @s value matches 10 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.06
execute if score @s value matches 11 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.13
execute if score @s value matches 12 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.20
execute if score @s value matches 13 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.27
execute if score @s value matches 14 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.34
execute if score @s value matches 15 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.41
execute if score @s value matches 16 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.48
execute if score @s value matches 17 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.55
execute if score @s value matches 18 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.62
execute if score @s value matches 19 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.69
execute if score @s value matches 20 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.76
execute if score @s value matches 21 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.83
execute if score @s value matches 22 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.90
execute if score @s value matches 23 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.97
execute if score @s value matches 24 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 2.00
execute if score @s value matches 25 run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 2 0.5
execute if score @s value matches 25 run particle minecraft:large_smoke ~ ~1 ~ 4 4 4 0.5 50 force @a
execute if score @s value matches 25 run scoreboard players operation #- number = @s number
execute if score @s value matches 25 run scoreboard players operation #- team_number = @s team_number
execute if score @s value matches 25 as @a[scores={max_health=0..},distance=..11] if score @s team_number = #- team_number run tag @s add skill31-buff-add
execute if score @s value matches 25 as @a if score @s number = #- number run function ex3:items/skill/0031/owner
execute if score @s value matches 25 as @a[tag=skill31-buff-add] at @s run function ex3:items/skill/0031/get-buff
execute if score @s value matches 25.. run kill @s



tag @s remove skill31-this