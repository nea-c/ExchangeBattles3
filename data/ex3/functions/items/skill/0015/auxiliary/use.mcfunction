#起爆装置使用時処理
scoreboard players operation #- number = @s number
execute as @e[tag=arrow_sprinkler] if score @s number = #- number run tag @s add deploy_check

execute if entity @e[tag=arrow_sprinkler,tag=deploy_check] at @s run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 2
execute unless entity @e[tag=arrow_sprinkler,tag=deploy_check] at @s run playsound minecraft:entity.generic.burn master @a ~ ~ ~ 1 2

execute at @s as @e[tag=arrow_sprinkler,tag=deploy_check,sort=nearest,limit=1] run tag @s add deploy

execute at @e[tag=arrow_sprinkler,tag=deploy,limit=1] run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 2

execute as @e[tag=arrow_sprinkler,tag=deploy,limit=1] at @s run function ex3:items/skill/0015/deploy


execute if entity @e[tag=arrow_sprinkler,tag=deploy_check,limit=1] as @e[tag=arrow_sprinkler,tag=deploy_check] run tag @s remove deploy_check

scoreboard players reset #-