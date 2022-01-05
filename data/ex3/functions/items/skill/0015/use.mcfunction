#スキル15
execute if score @s skill1 matches 15 run tag @s add skill1_use
execute if score @s skill2 matches 15 run tag @s add skill2_use
execute if score @s skill3 matches 15 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0015
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

tag @s add dont_place

function ex3:items/skill/bulk



summon marker ~ ~ ~ {Tags:["arrow_sprinkler","this"]}
scoreboard players operation @e[tag=this] number = @s number
scoreboard players operation @e[tag=this] team_number = @s team_number
execute at @s anchored eyes positioned ^ ^ ^ as @e[tag=this] run tp @s ~ ~ ~ ~ ~
tag @e[tag=this] remove this


playsound minecraft:item.bucket.empty master @a ~ ~ ~ 1 1
particle minecraft:splash ~ ~1 ~ 0.5 0.5 0.5 0.5 20 force

function ex3:items/skill/0015/auxiliary/set
