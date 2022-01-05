
execute if entity @s[tag=!go_tp] anchored eyes run particle minecraft:crit ~ ~ ~ 0.05 0.05 0.05 0.1 2 force
execute if entity @s[tag=!go_tp] anchored eyes run particle minecraft:enchanted_hit ~ ~ ~ 0.05 0.05 0.05 0.1 2 force

scoreboard players add @s value 1

execute if score @s value matches ..39 run tp @s ~ ~0.2 ~
execute if score @s value matches 40 run data merge entity @s {NoAI:1b}

scoreboard players operation #- team_number = @s team_number


execute if score @s value = @s tab run tag @s add go


execute if entity @s[tag=!go_tp] if score @s value matches 40.. as @e[scores={max_health=0..}] unless score @s team_number = #- team_number run tag @s add op-perforate_aim_target_candidacy
execute if entity @s[tag=!go_tp] if score @s value matches 40.. facing entity @e[scores={max_health=0..},tag=op-perforate_aim_target_candidacy,sort=random,limit=1] eyes run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!go_tp] if score @s value matches 40.. if entity @e[tag=op-perforate_aim_target_candidacy,limit=1] as @e[tag=op-perforate_aim_target_candidacy] run tag @s remove op-perforate_aim_target_candidacy


scoreboard players reset #-

execute if entity @s[tag=go] run tag @s add go_tp
execute if entity @s[tag=go] at @s run function ex3:items/skill/0016/particle

execute if entity @s[tag=go_tp] at @s run function ex3:items/skill/0016/shot

execute if entity @s[tag=go] run tag @s remove go