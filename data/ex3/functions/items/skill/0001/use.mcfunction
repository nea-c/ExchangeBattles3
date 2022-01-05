#スキル1
execute if score @s skill1 matches 1 run tag @s add skill1_use
execute if score @s skill2 matches 1 run tag @s add skill2_use
execute if score @s skill3 matches 1 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0001
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]


summon marker 0 0 0 {Tags:["skill1-time","this"]}
scoreboard players operation @e[tag=this] number = @s number
tag @e[tag=this] remove this


function ex3:items/skill/bulk



particle minecraft:crit ~ ~1 ~ 0 0 0 1 10 force
playsound minecraft:entity.arrow.hit master @a ~ ~ ~ 1 2
