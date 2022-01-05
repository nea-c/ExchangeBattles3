#スキル16
execute as @a[tag=hit] if entity @s[gamemode=spectator] run tag @s remove hit

scoreboard players set #- damage_resist 85
scoreboard players operation #- number = @s number

execute as @e[tag=hit] unless score @s damage_resist >= #- damage_resist run tag @s add magic
execute as @e[tag=hit] unless score @s damage_resist >= #- damage_resist run scoreboard players operation @s hurt_by = #- number
execute as @e[tag=hit] unless score @s damage_resist >= #- damage_resist run scoreboard players set @s damage_source 30006
execute as @e[tag=hit] unless score @s damage_resist >= #- damage_resist run scoreboard players operation @s damage_resist = #- damage_resist

tag @e[tag=hit] remove hit