#スキル18
scoreboard players operation #- number = @s number
execute as @e[tag=skill18-time] if score @s number = #- number run tag @s add skill18-using
execute if entity @e[tag=skill18-using,limit=1] run tag @s add using
execute as @e[tag=skill18-using] run tag @s remove skill18-using
scoreboard players reset #-
