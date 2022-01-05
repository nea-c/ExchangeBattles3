#スキル8
execute if score @s skill1 matches 8 run tag @s add skill1_use
execute if score @s skill2 matches 8 run tag @s add skill2_use
execute if score @s skill3 matches 8 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0008
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk


playsound minecraft:block.piston.extend master @a ~ ~ ~ 1
playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 1.4
particle minecraft:cloud ~ ~1 ~ 0 0 0 0.5 10 force

summon area_effect_cloud ~ ~1 ~ {Radius:0f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:25b,Amplifier:127,Duration:5}]}




