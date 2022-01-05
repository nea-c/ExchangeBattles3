#スキル1

execute if entity @s[gamemode=!spectator] run particle minecraft:crit ~ ~1 ~ 0 0 0 1 1 force
execute if entity @e[type=minecraft:arrow,distance=..6,limit=1] run playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 1 2
execute if entity @e[type=minecraft:arrow,distance=..6,limit=1] at @e[type=minecraft:arrow,distance=..6] run particle minecraft:end_rod ~ ~ ~ 0 1 0 0 5 force
execute if entity @e[type=minecraft:arrow,distance=..6,limit=1] as @e[type=minecraft:arrow,distance=..6] run kill @s
tag @s remove skill1-owner
