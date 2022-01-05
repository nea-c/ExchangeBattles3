#スキル9
execute if score @s skill1 matches 9 run tag @s add skill1_use
execute if score @s skill2 matches 9 run tag @s add skill2_use
execute if score @s skill3 matches 9 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0009
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime[0] 1


playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.2
playsound minecraft:entity.chicken.step master @a ~ ~ ~ 1

summon marker ~ ~ ~ {Tags:["this"]}
execute align y positioned ~ ~0.5 ~ run function ex3:items/skill/0009/search
execute if entity @e[tag=this,tag=ground,scores={value=3..},limit=1] run function ex3:items/skill/0009/tp
#tellraw @s {"score":{"name": "@e[tag=this,tag=ground,limit=1]","objective": "value"}}

kill @e[tag=this]


data remove block 0 0 0 Items[]
function ex3:items/skill/bulk
