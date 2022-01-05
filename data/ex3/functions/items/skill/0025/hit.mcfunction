#スキル2
execute as @a[tag=hit] if entity @s[gamemode=spectator] run tag @s remove hit

execute as @e[tag=hit,type=player] run tag @s add elytra_drop
execute as @e[tag=hit] run effect give @s minecraft:blindness 5 0
execute as @e[tag=hit,type=!player] run effect give @s minecraft:slowness 5 1 true
tag @e[tag=hit] remove hit
