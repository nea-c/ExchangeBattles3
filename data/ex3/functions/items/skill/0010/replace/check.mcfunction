#スキル10

scoreboard players operation #- number = @s number
execute as @a if score @s number = #- number run tag @s add bomb_placer
execute if entity @a[tag=bomb_placer,limit=1] as @a[tag=bomb_placer] run function ex3:items/skill/0010/replace/execution
execute if entity @a[tag=bomb_placer,limit=1] run tag @a[tag=bomb_placer] remove bomb_placer
scoreboard players reset #-
