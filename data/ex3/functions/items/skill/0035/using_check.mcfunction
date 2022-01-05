#スキル33
scoreboard players operation #- number = @s number
execute as @e[tag=skill35-time] if score @s number = #- number run tag @s add skill35-using
execute if entity @e[tag=skill35-using,limit=1] run tag @s add using
execute as @e[tag=skill35-using] run tag @s remove skill35-using
scoreboard players reset #-
