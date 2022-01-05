#スキル29
particle explosion ~ ~ ~ 0 0 0 0 1 force
particle minecraft:dust 1 1 1 2 ~ ~ ~ 1 1 1 0 20 force
particle minecraft:end_rod ~ ~ ~ 0 0 0 1 10 force
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
execute as @a[tag=hit] if entity @s[gamemode=spectator] run tag @s remove hit

execute store result score #rot value run data get entity @s Rotation[0] 100
execute store result score #rot value2 run data get entity @s Rotation[1] 100
execute as @e[tag=hit,type=player] run function ex3:general/shield/guard/check
scoreboard players reset #rot
scoreboard players reset #p-rot


scoreboard players set #- damage_resist 60
scoreboard players operation #- number = @s number

execute as @e[tag=hit] unless score @s damage_resist >= #- damage_resist run tag @s add magic
execute as @e[tag=hit] unless score @s damage_resist >= #- damage_resist run scoreboard players operation @s hurt_by = #- number
execute as @e[tag=hit] unless score @s damage_resist >= #- damage_resist run scoreboard players set @s damage_source 30029
execute as @e[tag=hit] unless score @s damage_resist >= #- damage_resist run scoreboard players operation @s damage_resist = #- damage_resist


tag @e[tag=hit] remove hit