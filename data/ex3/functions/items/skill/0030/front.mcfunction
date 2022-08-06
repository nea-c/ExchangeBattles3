#スキル30

scoreboard players add @s value2 1
scoreboard players add @s jump 1
scoreboard players add @s jump_achievement 1
execute unless score @s keep_team matches 1.. run scoreboard players set @s keep_team 1000
execute if score @s tab matches 1 run scoreboard players add @s keep_team 153
execute if score @s tab matches 1.. run scoreboard players set @s tab 0

scoreboard players add @s tab 1

scoreboard players operation #- number = @s number
scoreboard players operation #- team_number = @s team_number


#particle minecraft:dust 1 1 1 2 ~ ~ ~ 0.05 0.05 0.05 0 1 force
#particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force

teleport @s ~ ~ ~ ~ ~


execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,scores={max_health=0..}] unless score @s team_number = #- team_number run tag @s add hit
execute if entity @e[tag=hit,limit=1] run tag @s add end--

execute positioned ^ ^ ^0.5 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.325 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.25 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.125 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.5 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] run tag @s add hit-block
#execute if entity @s[tag=hit-block] as @e[scores={max_health=0..},distance=..2.5] unless score @s team_number = #- team_number run tag @s add hit
execute if entity @s[tag=hit-block] run tag @s add end--
execute if entity @s[tag=hit-block] run scoreboard players add @s jump_achievement 100000
execute if entity @s[tag=hit-block] run tag @s remove hit-block
execute if entity @e[tag=hit,type=player,limit=1] as @a[scores={max_health=0..}] if score @s number = #- number at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 0.6 0.5
execute if entity @e[tag=hit,limit=1] run function ex3:items/skill/0030/hit


execute if score @s value2 matches 140.. run tag @s add end--

execute if entity @s[tag=end--] run kill @s



execute unless score @s jump_achievement matches ..2 as @a unless score @s team_number = #- team_number run particle dust 1 0.5 0 1 ~ ~ ~ 0.05 0.05 0.05 0 1 force @s
execute unless score @s jump_achievement matches ..2 as @a if score @s team_number = #- team_number run particle dust 0 1 1 1 ~ ~ ~ 0.05 0.05 0.05 0 1 force @s
execute unless score @s jump_achievement matches ..2 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
execute unless score @s jump_achievement matches ..2 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.3 2
execute unless score @s jump_achievement matches ..2 run scoreboard players set @s jump_achievement 0

scoreboard players reset #-

execute unless entity @s[tag=end--] if score @s jump matches ..16 positioned ^ ^ ^0.5 run function ex3:items/skill/0030/front
execute unless entity @s[tag=end--] unless score @s jump matches ..16 run scoreboard players set @s jump 0
