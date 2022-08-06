#スキル32

scoreboard players add @s value2 1
scoreboard players add @s jump_achievement 1
execute unless score @s keep_team = @s keep_team run scoreboard players set @s keep_team 1000
execute if score @s tab matches 1 run scoreboard players remove @s keep_team 60
execute if score @s tab matches 1.. run scoreboard players set @s tab 0

scoreboard players add @s tab 1

scoreboard players operation #- number = @s number
scoreboard players operation #- team_number = @s team_number


#particle minecraft:dust 1 1 1 2 ~ ~ ~ 0.05 0.05 0.05 0 1 force
#particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force


execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!hit-end,dx=0,scores={max_health=0..}] unless score @s team_number = #- team_number run tag @s add hit
#execute if entity @e[tag=hit,limit=1] run tag @s add end--

execute positioned ^ ^ ^0.5 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.25 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.125 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.5 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] run tag @s add hit-block
execute if entity @s[tag=hit-block] run tag @s add end--
execute if entity @s[tag=hit-block] run tag @s remove hit-block
execute if entity @e[tag=hit,limit=1] run function ex3:items/skill/0032/hit

execute if score @s value2 matches 14.. run tag @s add end--

#execute if entity @s[tag=end--] run kill @s

execute if score @s jump_achievement matches 1 run particle sweep_attack ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.25 0
execute if score @s jump_achievement matches 4.. run scoreboard players set @s jump_achievement 0

scoreboard players reset #-


execute unless entity @s[tag=end--] positioned ^ ^ ^0.5 run function ex3:items/skill/0032/front
