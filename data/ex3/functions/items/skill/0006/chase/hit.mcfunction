#スキル16
execute as @a[tag=hit] if entity @s[gamemode=spectator] run tag @s remove hit

scoreboard players operation #- number = @s number

execute as @e[tag=hit] run tag @s add magic
execute as @e[tag=hit] run scoreboard players operation @s hurt_by = #- number
execute as @e[tag=hit] run scoreboard players set @s damage_source 30006
execute as @e[tag=hit] run scoreboard players set @s damage_resist 85

execute as @e[tag=hit] run function ex3:general/health_proc/damage/calc

tag @e[tag=hit] remove hit