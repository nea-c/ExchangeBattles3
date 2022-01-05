#スキル16

execute if entity @s[tag=!go_tp] anchored eyes run particle minecraft:crit ~ ~ ~ 0.05 0.05 0.05 0.1 2 force
execute if entity @s[tag=!go_tp] anchored eyes run particle minecraft:enchanted_hit ~ ~ ~ 0.05 0.05 0.05 0.1 2 force

scoreboard players add @s value 1

execute if score @s value matches ..39 run tp @s ~ ~0.2 ~
execute if score @s value matches 40 run data merge entity @s {NoAI:1b}

scoreboard players operation #- team_number = @s team_number


execute if entity @s[tag=no1] if score @s value matches 50 run tag @s add go
execute if entity @s[tag=no2] if score @s value matches 60 run tag @s add go
execute if entity @s[tag=no3] if score @s value matches 70 run tag @s add go


execute if entity @s[tag=go] as @e[scores={max_health=0..},nbt=!{Invulnerable:1b}] unless score @s team_number = #- team_number run tag @s add skill16-target-c
execute if entity @s[tag=go] as @a[tag=skill16-target-c,gamemode=spectator] run tag @s remove skill16-target-c
execute if entity @s[tag=go] as @e[tag=skill16-target-c,nbt={Effects:[{Id:14b}]}] run tag @s remove skill16-target-c
execute if entity @s[tag=go] facing entity @e[scores={max_health=0..},tag=skill16-target-c,sort=nearest,limit=1] eyes run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=go] if entity @e[tag=skill16-target-c,limit=1] as @e[tag=skill16-target-c] run tag @s remove skill16-target-c


scoreboard players reset #-

execute if entity @s[tag=go] run tag @s add go_tp
execute if entity @s[tag=go] at @s run function ex3:items/skill/0016/particle
execute if entity @s[tag=go] run scoreboard players reset @s value2

execute if entity @s[tag=go_tp] at @s run function ex3:items/skill/0016/shot

execute if entity @s[tag=go] run tag @s remove go


execute if entity @s[tag=end--] run teleport @s ~ ~-512 ~
execute if entity @s[tag=end--] run kill @s