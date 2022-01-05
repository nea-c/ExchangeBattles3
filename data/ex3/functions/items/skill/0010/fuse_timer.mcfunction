#スキル10
scoreboard players add @s value 1

scoreboard players operation #- team_number = @s team_number

execute as @a unless score @s team_number = #- team_number run particle dust 1 0.5 0 1 ~ ~1 ~ 0.3 0.3 0.3 0 2 force @s
execute as @a if score @s team_number = #- team_number run particle dust 0 1 1 1 ~ ~1 ~ 0.3 0.3 0.3 0 2 force @s

execute store result entity @s Rotation[0] float 0.00001 run scoreboard players get @s jump
execute store result entity @s Rotation[1] float 0.00001 run scoreboard players get @s value2
execute unless data entity @s ActiveEffects[{Id:24b}] if data entity @s Glowing run data modify entity @s Glowing set value 0b
execute if data entity @s ActiveEffects[{Id:24b}] unless data entity @s Glowing run data modify entity @s Glowing set value 1b
data modify entity @s FallDistance set value 0

execute if score @s value matches 201.. run function ex3:items/skill/0010/fuse

scoreboard players reset #-