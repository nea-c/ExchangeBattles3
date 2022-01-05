#スキル22
execute if score @s skill1 matches 22 run tag @s add skill1_use
execute if score @s skill2 matches 22 run tag @s add skill2_use
execute if score @s skill3 matches 22 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0022
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk



playsound minecraft:entity.enderman.death master @a ~ ~ ~ 1 0.7
particle minecraft:large_smoke ~ ~1 ~ 0 0 0 1 40 force

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["soul_curse","this","not-death-with"],Duration:100}
scoreboard players operation @e[tag=this] number = @s number
scoreboard players operation @e[tag=this] team_number = @s team_number
tag @e[tag=this] remove this

