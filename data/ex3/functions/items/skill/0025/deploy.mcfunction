#スキル24

execute at @s as @e[scores={max_health=0..},distance=..3] unless score @s team_number = #- team_number run tag @s add hit
execute at @s if entity @e[tag=hit,limit=1] run function ex3:items/skill/0025/hit


execute at @s run playsound minecraft:entity.ravager.celebrate master @a ~ ~ ~ 1 2
execute at @s run playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.8
execute at @s run particle minecraft:large_smoke ~ ~ ~ 0 0 0 2 20 force @a
execute at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 2 20 force @a

