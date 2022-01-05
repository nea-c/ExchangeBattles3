#スキル31
execute if score @s skill1 matches 31 run tag @s add skill1_use
execute if score @s skill2 matches 31 run tag @s add skill2_use
execute if score @s skill3 matches 31 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0031
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime[0] 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk


summon marker ~ ~ ~ {Tags:["skill31-time","this"]}

tp @e[tag=this] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this] number = @s number
scoreboard players operation @e[tag=this] team_number = @s team_number
execute if score @s skill1 matches 31 run tag @e[tag=this] add slot1
execute if score @s skill2 matches 31 run tag @e[tag=this] add slot2
execute if score @s skill3 matches 31 run tag @e[tag=this] add slot3
tag @e[tag=this] remove this

