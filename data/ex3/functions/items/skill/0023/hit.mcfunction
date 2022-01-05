#スキル23
execute as @a[tag=hit] if entity @s[gamemode=spectator] run tag @s remove hit
execute as @e[tag=hit] run effect give @s minecraft:glowing 5 2
tag @e[tag=hit] remove hit
