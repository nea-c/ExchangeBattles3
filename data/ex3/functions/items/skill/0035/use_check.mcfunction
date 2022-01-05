#スキル33
#execute if score @s skill1 matches 33 run tag @s add skill1_use
#execute if score @s skill2 matches 33 run tag @s add skill2_use
#execute if score @s skill3 matches 33 run tag @s add skill3_use
#===================================================================

#loot replace block 0 0 0 container.0 loot ex3:items/skill/0033
#execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1

#function ex3:items/skill/bulk
clear @s pumpkin_pie{skill_number:35}
function ex3:items/skill/item_set

#kill @e[type=potion,tag=setup,limit=1]

scoreboard players operation #- number = @s number
execute as @e[tag=skill35-time] if score @s number = #- number run tag @s add skill35-using

execute if entity @s[nbt={OnGround:1b}] unless entity @e[tag=skill35-using,limit=1] run function ex3:items/skill/0035/use_start
execute if entity @e[tag=skill35-using,limit=1] run function ex3:items/skill/0035/use_end

execute if entity @e[tag=skill35-using,limit=1] as @e[tag=skill35-using] run tag @s remove skill35-using

scoreboard players reset #-


advancement revoke @s only ex3:general/foods/use.pumpkin_pie
#function ex3:items/skill/0033/arrow
