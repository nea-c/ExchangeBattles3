#スキル15
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:60,Tags:["arrow_sprinkler_aec","this"]}
scoreboard players operation @e[tag=this] number = @s number
scoreboard players operation @e[tag=this] team_number = @s team_number
tag @e[tag=this] remove this

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.6
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.6
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.6

execute as @e[tag=sprink_arrow_deploy] run tag @s remove sprink_arrow_deploy


scoreboard players operation #- number = @s number
execute as @a if score @s number = #- number run tag @s add sprink_arrow_shoter

execute if entity @a[tag=sprink_arrow_shoter,limit=1] as @a[tag=sprink_arrow_shoter] run function ex3:items/skill/0015/shoter

execute if entity @a[tag=sprink_arrow_shoter,limit=1] run tag @a[tag=sprink_arrow_shoter] remove sprink_arrow_shoter

tag @s add kill
teleport @s ~ ~-512 ~
kill @s

scoreboard players set @s value2 100000