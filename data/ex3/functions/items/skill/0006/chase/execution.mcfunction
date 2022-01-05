#スキル6

playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 1.4
playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 0.7 1.2
particle minecraft:effect ~ ~1 ~ 0.2 0.5 0.2 1 20 force


scoreboard players operation #- team_number = @s team_number
execute if entity @e[scores={max_health=0..},distance=..7,limit=1] as @e[scores={max_health=0..},distance=..7] unless score @s team_number = #- team_number run tag @s add hit


summon marker ~ ~ ~ {Tags:["skill6-chase-time","this"]}
#execute anchored eyes positioned ^ ^ ^ facing entity @e[tag=hit,limit=1] eyes run tp @e[tag=this] ~ ~ ~ ~ ~
execute at @s anchored eyes positioned ^ ^ ^ run tp @e[tag=this] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this] number = @s number
scoreboard players operation @e[tag=this] team_number = @s team_number
execute as @e[tag=this] at @s run function ex3:items/skill/0006/chase/notice
tag @e[tag=this] remove this

execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run tag @s remove hit
scoreboard players reset #-


tag @s add skill6-chase