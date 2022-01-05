#スキル29

execute rotated as @s positioned ^ ^ ^0.5 run scoreboard players add @s tab 1
execute rotated as @s positioned ^ ^ ^0.5 run tp @s ~ ~ ~ ~ ~

execute at @s positioned ^ ^ ^0.5 unless block ~ ~ ~ #ex3:like_air run scoreboard players set @s tab 10000
execute at @s positioned ^ ^ ^0.375 unless block ~ ~ ~ #ex3:like_air run scoreboard players set @s tab 10000
execute at @s positioned ^ ^ ^0.25 unless block ~ ~ ~ #ex3:like_air run scoreboard players set @s tab 10000
execute at @s positioned ^ ^ ^0.125 unless block ~ ~ ~ #ex3:like_air run scoreboard players set @s tab 10000
execute at @s positioned ^ ^ ^0.5 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] run scoreboard players set @s tab 10000

execute if score @s value2 matches 1..20 unless score @s tab matches 10.. at @s run function ex3:items/skill/0029/tp
execute if score @s value2 matches 21..40 unless score @s tab matches 12.. at @s run function ex3:items/skill/0029/tp
execute if score @s value2 matches 41..60 unless score @s tab matches 14.. at @s run function ex3:items/skill/0029/tp
execute if score @s value2 matches 61..80 unless score @s tab matches 16.. at @s run function ex3:items/skill/0029/tp
execute if score @s value2 matches 81..100 unless score @s tab matches 18.. at @s run function ex3:items/skill/0029/tp

