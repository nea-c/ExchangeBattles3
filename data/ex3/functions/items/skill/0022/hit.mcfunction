#スキル22
execute as @a[tag=hit] if entity @s[gamemode=spectator] run tag @s remove hit
scoreboard players set @s tab 20
scoreboard players operation @s tab += @s value2
execute if score @s tab matches 40.. run scoreboard players set @s tab 40

scoreboard players operation #- damage_resist = @s tab
scoreboard players operation #- number = @s number

execute as @e[tag=hit] run tag @s add magic
execute as @e[tag=hit] run tag @s add knockback-disabled
execute as @e[tag=hit] run scoreboard players operation @s hurt_by = #- number
execute as @e[tag=hit] run scoreboard players set @s damage_source 30022
execute as @e[tag=hit] run scoreboard players operation @s damage_resist = #- damage_resist

execute as @e[tag=hit] run function ex3:general/health_proc/damage/calc

tag @e[tag=hit] remove hit