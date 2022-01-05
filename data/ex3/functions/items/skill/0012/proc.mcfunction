#スキル12

scoreboard players operation #- number = @s number
execute as @a[scores={max_health=0..}] if score @s number = #- number run tag @s add skill12-now

scoreboard players add @s value 1
execute if score @s value matches 11 run kill @s

scoreboard players reset #-

