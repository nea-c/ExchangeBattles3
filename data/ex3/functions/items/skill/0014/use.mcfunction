#スキル14



function ex3:items/skill/0014/check



execute if entity @s[tag=tp_ok] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.8
execute if entity @s[tag=tp_ok] run particle minecraft:portal ~ ~1 ~ 0 0 0 1 20 force
execute if entity @s[tag=tp_ok] run tp @s ^ ^ ^7.5
execute if entity @s[tag=tp_ok] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.8
execute if entity @s[tag=tp_ok] at @s run particle minecraft:portal ~ ~1 ~ 0 0 0 1 20 force



execute if score @s[tag=tp_ok] skill1 matches 14 run tag @s add skill1_use
execute if score @s[tag=tp_ok] skill2 matches 14 run tag @s add skill2_use
execute if score @s[tag=tp_ok] skill3 matches 14 run tag @s add skill3_use
#===================================================================


execute if entity @s[tag=tp_ok] run loot replace block 0 0 0 container.0 loot ex3:items/skill/0014
execute if entity @s[tag=tp_ok] store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
execute if entity @s[tag=tp_ok] run data remove block 0 0 0 Items[]

execute if entity @s[tag=tp_ok] run function ex3:items/skill/bulk


execute if entity @s[tag=tp_ok] run tag @s remove tp_ok
