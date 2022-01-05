#スキル25
execute if score @s skill1 matches 25 run tag @s add skill1_use
execute if score @s skill2 matches 25 run tag @s add skill2_use
execute if score @s skill3 matches 25 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0025
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk

summon marker ~ ~ ~ {Tags:["skill25-time","this"]}
scoreboard players operation @e[tag=this,limit=1] number = @s number
scoreboard players operation @e[tag=this,limit=1] team_number = @s team_number
execute if score @s skill1 matches 25 run tag @e[tag=this] add slot1
execute if score @s skill2 matches 25 run tag @e[tag=this] add slot2
execute if score @s skill3 matches 25 run tag @e[tag=this] add slot3
tag @e[tag=this,limit=1] remove this

playsound minecraft:entity.enderman.death master @a
particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0 10 force @a
#attribute @s generic.movement_speed modifier add 0-0-0-3-0025 "skill25" -1 multiply

