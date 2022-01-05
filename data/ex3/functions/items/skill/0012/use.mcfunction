#スキル12
execute if score @s skill1 matches 12 run tag @s add skill1_use
execute if score @s skill2 matches 12 run tag @s add skill2_use
execute if score @s skill3 matches 12 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0012
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime[0] 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk

playsound entity.ender_dragon.hurt master @a ~ ~ ~ 1 1.7
particle flash ~ ~ ~ 0 0 0 0 2 force @a
summon marker 0 0 0 {Tags:["skill12-time","this"]}
scoreboard players operation @e[tag=this] number = @s number
execute if score @s skill1 matches 12 run tag @e[tag=this] add slot1
execute if score @s skill2 matches 12 run tag @e[tag=this] add slot2
execute if score @s skill3 matches 12 run tag @e[tag=this] add slot3
tag @e[tag=this] remove this

