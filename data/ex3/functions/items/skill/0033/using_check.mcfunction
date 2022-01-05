#スキル33
scoreboard players operation #- number = @s number
execute as @e[tag=skill33-time] if score @s number = #- number run tag @s add skill33-using
execute if entity @e[tag=skill33-using,limit=1] run tag @s add using
execute as @e[tag=skill33-using] run tag @s remove skill33-using
scoreboard players reset #-
