#スキル15

scoreboard players add @s value2 1
scoreboard players add @s jump 1

teleport @s ~ ~ ~ ~ ~




scoreboard players operation #- team_number = @s team_number

execute as @a unless score @s team_number = #- team_number run particle dust 1 0.5 0 0.5 ~ ~ ~ 0 0 0 0 2 force @s
execute as @a if score @s team_number = #- team_number run particle dust 0 1 1 0.5 ~ ~ ~ 0 0 0 0 2 force @s
particle minecraft:splash ~ ~ ~ 0 0 0 0 5 force

execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,scores={max_health=0..}] positioned ~0.5 ~0.5 ~0.5 if entity @s[dx=0] unless score @s team_number = #- team_number run tag @s add sprink_arrow_deploy
#execute if entity @e[tag=sprink_arrow_deploy,limit=1] as @e[tag=sprink_arrow_deploy] run say a
execute if entity @e[tag=sprink_arrow_deploy,limit=1] run function ex3:items/skill/0015/deploy

execute positioned ^ ^ ^0.5 unless block ~ ~ ~ #ex3:like_air run tag @s add deploy
execute positioned ^ ^ ^0.325 unless block ~ ~ ~ #ex3:like_air run tag @s add deploy
execute positioned ^ ^ ^0.25 unless block ~ ~ ~ #ex3:like_air run tag @s add deploy
execute positioned ^ ^ ^0.125 unless block ~ ~ ~ #ex3:like_air run tag @s add deploy
execute positioned ^ ^ ^0.5 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] run tag @s add deploy

execute unless entity @s[tag=kill] if entity @s[tag=deploy] run function ex3:items/skill/0015/deploy

execute unless entity @s[tag=kill] if score @s value2 matches 160.. run function ex3:items/skill/0015/deploy

#execute if entity @s[tag=kill] run teleport @s ~ ~-512 ~
#execute if entity @s[tag=kill] run kill @s

execute unless entity @s[tag=kill] if score @s jump matches ..2 positioned ^ ^ ^0.5 run function ex3:items/skill/0015/shot
execute unless entity @s[tag=kill] unless score @s jump matches ..2 run playsound minecraft:item.bucket.fill master @a ~ ~ ~ 1 2
execute unless entity @s[tag=kill] unless score @s jump matches ..2 run scoreboard players set @s jump 0