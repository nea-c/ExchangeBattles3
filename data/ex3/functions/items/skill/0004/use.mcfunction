#スキル4
#===================================================================
execute if score @s skill1 matches 4 run tag @s add skill1_use
execute if score @s skill2 matches 4 run tag @s add skill2_use
execute if score @s skill3 matches 4 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0004
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime[0] 1
execute store result score #ct value2 run data get block 0 0 0 Items[0].tag.cooltime[1] 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk


summon marker 0 0 0 {Tags:["skill4-time","this"]}
scoreboard players operation @e[tag=this] number = @s number
tag @e[tag=this] remove this


particle minecraft:firework ~ ~1 ~ 0 0 0 0.3 20 force
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 1.8

