#スキル5
scoreboard players add @s value 1
execute if score @s[tag=!earl_start] value matches 80 at @s run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 1.8
execute if score @s[tag=!earl_start] value matches 80 at @s run data merge entity @s {Pumpkin:0b}
execute if score @s[tag=!earl_start] value matches 80 run tag @s add earl_start
execute if entity @s[tag=earl_start] run particle witch ~ ~0.5 ~ 0.3 0.3 0.3 0 3 force

execute if score @s value matches 80.. run scoreboard players add @s value2 1

execute if score @s value2 matches 1 at @s run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 2
execute if score @s value2 matches 1 run tag @s add earl_execution
execute if score @s value2 matches 1 run particle instant_effect ~ ~1 ~ 4.7 0.3 4.7 0 70 force
execute if score @s value2 matches 100.. run scoreboard players set @s value2 0

scoreboard players operation #- team_number = @s team_number

execute as @a unless score @s team_number = #- team_number run particle dust 1 0.5 0 1 ~ ~1 ~ 0.4 0.4 0.4 0 1 force @s
execute as @a if score @s team_number = #- team_number run particle dust 0 1 1 1 ~ ~1 ~ 0.4 0.4 0.4 0 1 force @s


execute if entity @s[tag=earl_start,tag=earl_execution] as @e[scores={max_health=0..},distance=..10] if score @s team_number = #- team_number run tag @s add hit

execute if entity @s[tag=earl_start,tag=earl_execution] if entity @a[tag=hit,gamemode=spectator,limit=1] as @a[tag=hit,gamemode=spectator] run tag @s remove hit

execute if entity @s[tag=earl_start,tag=earl_execution] if entity @e[tag=hit,limit=1] as @e[tag=hit] run function ex3:items/skill/0005/debuff-clear



execute if entity @s[tag=earl_start,tag=earl_execution] run tag @s remove earl_execution

scoreboard players reset #-