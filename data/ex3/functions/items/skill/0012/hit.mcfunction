#スキル12
execute as @a[tag=hit] if entity @s[gamemode=spectator] run tag @s remove hit
execute as @e[tag=hit] run effect give @s minecraft:blindness 5 0
execute as @e[tag=hit] run effect give @s minecraft:weakness 5 0

scoreboard players set #- damage_resist 64

execute as @e[tag=hit] unless score @s damage_resist >= #- damage_resist run tag @s add magic
execute as @e[tag=hit] unless score @s damage_resist >= #- damage_resist run scoreboard players operation @s hurt_by = #- number
execute as @e[tag=hit] unless score @s damage_resist >= #- damage_resist run scoreboard players set @s damage_source 30012
execute as @e[tag=hit] unless score @s damage_resist >= #- damage_resist run scoreboard players operation @s damage_resist = #- damage_resist


tag @e[tag=hit] remove hit
