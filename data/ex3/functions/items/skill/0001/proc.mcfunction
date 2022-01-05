#スキル1

scoreboard players operation #- number = @s number
execute as @a[scores={max_health=0..}] if score @s number = #- number run tag @s add skill1-owner

execute if entity @a[tag=skill1-owner,limit=1] as @a[tag=skill1-owner] at @s run function ex3:items/skill/0001/owner

scoreboard players add @s value 1
execute if score @s value matches 11 run kill @s

scoreboard players reset #-