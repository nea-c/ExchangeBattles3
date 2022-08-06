#スキル16
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.6
execute as @a[tag=hit] if entity @s[gamemode=spectator] run tag @s remove hit

execute store result score #rot value run data get entity @s Rotation[0] 100
execute store result score #rot value2 run data get entity @s Rotation[1] 100
execute as @e[tag=hit,type=player] run function ex3:general/shield/guard/check
scoreboard players reset #rot
scoreboard players reset #p-rot

scoreboard players set @s tab 18
scoreboard players operation @s tab *= @s keep_team
scoreboard players operation @s tab /= #1000 value
execute if score @s tab matches 72.. run scoreboard players set @s tab 72

scoreboard players operation #- damage_resist = @s tab

execute as @e[tag=hit] run tag @s add magic
execute as @e[tag=hit] run scoreboard players operation @s hurt_by = #- number
execute as @e[tag=hit] run scoreboard players set @s damage_source 30016
execute as @e[tag=hit] run scoreboard players operation @s damage_resist = #- damage_resist

execute as @e[tag=hit] run function ex3:general/health_proc/damage/calc

tag @e[tag=hit] remove hit