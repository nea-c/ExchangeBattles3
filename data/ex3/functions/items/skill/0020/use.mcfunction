#スキル20
execute if score @s skill1 matches 20 run tag @s add skill1_use
execute if score @s skill2 matches 20 run tag @s add skill2_use
execute if score @s skill3 matches 20 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0020
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk


playsound minecraft:ui.loom.take_result master @a ~ ~ ~ 1 1.3
particle minecraft:happy_villager ~ ~1 ~ 0.4 0.6 0.4 0 15 force


scoreboard players set @e[tag=arrow-reloading] value 5


