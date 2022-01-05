#スキル29
execute if score @s skill1 matches 29 run tag @s add skill1_use
execute if score @s skill2 matches 29 run tag @s add skill2_use
execute if score @s skill3 matches 29 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0029
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk

kill @e[type=snowball,tag=setup,limit=1]

summon marker ~ ~ ~ {Tags:["skill29-ball","this"]}
scoreboard players operation @e[tag=this] number = @s number
scoreboard players operation @e[tag=this] team_number = @s team_number
data merge storage random: {data:{min:1,max:100.999}}
execute store result score @e[tag=this] value2 run function ex3:general/random
execute anchored eyes positioned ^ ^ ^1 run tp @e[tag=this] ~ ~ ~ ~ ~
tag @e[tag=this] remove this

playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 1 1
