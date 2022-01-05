#スキル33
#execute if score @s skill1 matches 33 run tag @s add skill1_use
#execute if score @s skill2 matches 33 run tag @s add skill2_use
#execute if score @s skill3 matches 33 run tag @s add skill3_use
#===================================================================

#loot replace block 0 0 0 container.0 loot ex3:items/skill/0033
#execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1

#function ex3:items/skill/bulk

playsound minecraft:item.bottle.fill master @a ~ ~ ~ 1 1.7
kill @e[type=potion,tag=setup,limit=1]

scoreboard players operation #- number = @s number
execute as @e[tag=skill33-time] if score @s number = #- number run tag @s add skill33-using

execute unless entity @e[tag=skill33-using,limit=1] run function ex3:items/skill/0033/use_start
execute if entity @e[tag=skill33-using,limit=1] run function ex3:items/skill/0033/use_end

execute if entity @e[tag=skill33-using,limit=1] as @e[tag=skill33-using] run tag @s remove skill33-using

scoreboard players reset #-



#function ex3:items/skill/0033/arrow
