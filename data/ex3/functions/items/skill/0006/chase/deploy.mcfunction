#スキル6


scoreboard players add @s value 1
scoreboard players add @s jump 1

scoreboard players operation #- team_number = @s team_number


particle minecraft:damage_indicator ~ ~ ~ 0.2 0.4 0.2 1 3 force
playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 0.06 1.4

execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,scores={max_health=0..}] positioned ~0.5 ~0.5 ~0.5 if entity @s[dx=0] unless score @s team_number = #- team_number run tag @s add hit
execute as @e[distance=..2,scores={max_health=0..}] unless score @s team_number = #- team_number run tag @s add hit

scoreboard players reset #-

execute if score @s value matches 14.. run tag @s add end--

execute positioned ^ ^ ^0.5 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.325 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.25 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.125 unless block ~ ~ ~ #ex3:like_air run tag @s add hit-block
execute positioned ^ ^ ^0.5 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] run tag @s add hit-block
execute if entity @s[tag=hit-block] run tag @s add end--

execute unless entity @s[tag=end--] positioned ^ ^ ^0.5 run function ex3:items/skill/0006/chase/deploy
