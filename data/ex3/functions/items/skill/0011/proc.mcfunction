#スキル11
scoreboard players add @s value 1
playsound minecraft:block.campfire.crackle master @a ~ ~ ~ 0.02 1.7
execute if score @s[tag=!fire_start] value matches 80 at @s run playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1 1.2
execute if score @s[tag=!fire_start] value matches 80 at @s run data merge entity @s {Invulnerable:0b}
execute if score @s[tag=!fire_start] value matches 80 run tag @s add fire_start
execute if entity @s[tag=fire_start] run tp @s ~ ~ ~ ~1 ~
execute if entity @s[tag=fire_start] run particle dust 1 0.1 0 1.3 ~ ~1 ~ 0.3 0.3 0.3 0 1 force

execute if score @s value matches 80.. run scoreboard players add @s value2 1

execute if score @s value2 matches 1 at @s run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 0.7
execute if score @s value2 matches 1 run tag @s add fire_execution
execute if score @s value2 matches 1 run particle flame ~ ~1 ~ 0.3 0.3 0.3 0 40 force
execute if score @s value2 matches 100.. run scoreboard players set @s value2 0

scoreboard players operation #- team_number = @s team_number

execute as @a unless score @s team_number = #- team_number run particle dust 1 0.5 0 1 ~ ~1 ~ 0.4 0.4 0.4 0 1 force @s
execute as @a if score @s team_number = #- team_number run particle dust 0 1 1 1 ~ ~1 ~ 0.4 0.4 0.4 0 1 force @s


execute if entity @s[tag=fire_start,tag=fire_execution] as @e[scores={max_health=0..},distance=..13] unless score @s team_number = #- team_number run tag @s add hit

execute if entity @s[tag=fire_start,tag=fire_execution] if entity @a[tag=hit,gamemode=spectator,limit=1] as @a[tag=hit,gamemode=spectator] run tag @s remove hit

execute if entity @s[tag=fire_start,tag=fire_execution] if entity @e[tag=hit,limit=1] as @e[tag=hit] run function ex3:items/skill/0011/shot

#execute if entity @s[tag=fire_start,tag=fire_execution] if entity @e[distance=0.01..13,tag=fire_proc,tag=!fire_enable,limit=1] run function ex3:items/skill/0011/proc2
#execute if entity @s[tag=fire_start,tag=fire_execution] unless entity @e[distance=0.01..13,tag=fire_proc,tag=!fire_enable,limit=1] if entity @e[distance=0.01..13,tag=fire_proc,tag=fire_enable,limit=1] as @e[distance=0.01..13,tag=fire_proc,tag=fire_enable] run tag @s remove fire_enable
#execute if entity @s[tag=fire_start,tag=fire_execution] if entity @e[distance=0.01..13,tag=fire_proc,limit=1] as @e[distance=0.01..13,tag=fire_proc] run tag @s remove fire_proc

execute if entity @s[tag=fire_start,tag=fire_execution] run tag @s remove fire_execution

scoreboard players reset #-