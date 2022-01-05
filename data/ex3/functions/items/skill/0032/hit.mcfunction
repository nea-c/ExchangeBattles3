#スキル32
execute as @a[tag=hit] if entity @s[gamemode=spectator] run tag @s remove hit

execute store result score #rot value run data get entity @s Rotation[0] 100
scoreboard players add #rot value 9000
execute store result score #rot value2 run data get entity @s Rotation[1] 100
execute as @e[tag=hit,type=player] run function ex3:general/shield/guard/check
scoreboard players reset #rot
scoreboard players reset #p-rot

scoreboard players set @s logout 88
scoreboard players operation @s logout *= @s keep_team
scoreboard players operation @s logout /= #1000 value
execute if score @s logout matches ..30 run scoreboard players set @s logout 30
execute if score @s logout matches 80.. run scoreboard players set @s logout 80


scoreboard players operation #- damage_resist = @s logout

execute as @e[tag=hit] unless score @s damage_resist >= #- damage_resist run tag @s add magic
execute as @e[tag=hit] unless score @s damage_resist >= #- damage_resist run scoreboard players operation @s hurt_by = #- number
execute as @e[tag=hit] unless score @s damage_resist >= #- damage_resist run scoreboard players set @s damage_source 30032
execute as @e[tag=hit] unless score @s damage_resist >= #- damage_resist run scoreboard players operation @s damage_resist = #- damage_resist


tag @e[tag=hit] add hit-end
tag @e[tag=hit] remove hit