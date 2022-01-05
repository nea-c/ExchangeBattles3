#スキル30
execute if score @s skill1 matches 30 run tag @s add skill1_use
execute if score @s skill2 matches 30 run tag @s add skill2_use
execute if score @s skill3 matches 30 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0030
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk

playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 1

summon marker ~ ~ ~ {Tags:["skill30-shot","this"]}

execute anchored eyes positioned ^ ^ ^ run tp @e[tag=this] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this] number = @s number
scoreboard players operation @e[tag=this] team_number = @s team_number
tag @e[tag=this] remove this

