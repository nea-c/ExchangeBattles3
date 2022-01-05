scoreboard players operation #- number = @s number
tag @s add it
execute if entity @s[tag=skill10-bomb] as @a if score @s number = #- number run function ex3:items/skill/0010/replace/check
tag @s remove it
scoreboard players reset #- number