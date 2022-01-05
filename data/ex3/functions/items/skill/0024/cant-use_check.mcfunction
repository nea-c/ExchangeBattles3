#スキル24
scoreboard players operation #- number = @s number
execute as @e[tag=skill24-time] if score @s number = #- number run tag @s add skill24-using
execute if entity @e[tag=skill24-using,limit=1] run tag @s add cant-use
execute as @e[tag=skill24-using] run tag @s remove skill24-using
scoreboard players reset #-
