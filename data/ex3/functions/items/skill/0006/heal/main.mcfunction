#スキル6


playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.8
particle minecraft:firework ~ ~1 ~ 2 2 2 0 20 force
scoreboard players operation #- team_number = @s team_number

tag @s add anchor

execute as @e[scores={max_health=0..},tag=!anchor,distance=..4] if score @s team_number = #- team_number run function ex3:items/skill/0006/heal/health-check
execute as @e[scores={max_health=0..},tag=!anchor,tag=skill6-heal-target-c,distance=..4,sort=random,limit=2] run tag @s add skill6-heal
execute as @e[scores={max_health=0..},tag=!anchor,tag=skill6-heal] run function ex3:items/skill/0006/heal/execution

execute if entity @e[tag=skill6-heal-target-c,limit=1] as @e[tag=skill6-heal-target-c] run tag @s remove skill6-heal-target-c

tag @s remove anchor
scoreboard players reset #-


