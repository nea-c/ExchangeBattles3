#スキル18
#execute if score @s skill1 matches 18 run tag @s add skill1_use
#execute if score @s skill2 matches 18 run tag @s add skill2_use
#execute if score @s skill3 matches 18 run tag @s add skill3_use
#===================================================================

#loot replace block 0 0 0 container.0 loot ex3:items/skill/0018
#execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1

#function ex3:items/skill/bulk


scoreboard players operation #- number = @s number
execute as @e[tag=skill18-time] if score @s number = #- number run tag @s add skill18-using

execute unless entity @e[tag=skill18-using,limit=1] run function ex3:items/skill/0018/use_start
#execute if entity @e[tag=skill18-using,limit=1] run function ex3:items/skill/0018/use_end

execute if entity @e[tag=skill18-using,limit=1] as @e[tag=skill18-using] run tag @s remove skill18-using

scoreboard players reset #-



#function ex3:items/skill/0018/arrow
