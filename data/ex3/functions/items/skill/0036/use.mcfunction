#スキル36
execute if score @s skill1 matches 36 run tag @s add skill1_use
execute if score @s skill2 matches 36 run tag @s add skill2_use
execute if score @s skill3 matches 36 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0036
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk



playsound minecraft:entity.chicken.ambient master @a ~ ~ ~ 1 1.6
playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 1 1

summon chicken ~ ~ ~ {Tags:["skill36-chicken","this"],Age:-2147483648,Health:1.0f,Team:"random"}

scoreboard players operation @e[tag=this] number = @s number
scoreboard players operation @e[tag=this] team_number = @s team_number

tag @e[tag=this] remove this