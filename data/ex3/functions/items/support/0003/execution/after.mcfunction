
scoreboard players operation #- number = @s number
execute as @a if score @s number = #- number run tag @s add support3-owner
tag @s add this

execute if entity @a[tag=support3-owner,scores={max_health=0..},limit=1] as @a[tag=support3-owner,scores={max_health=0..}] run function ex3:items/support/0003/execution/owner


scoreboard players reset #-