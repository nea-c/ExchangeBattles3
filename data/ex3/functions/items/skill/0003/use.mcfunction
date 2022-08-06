#スキル3
execute if score @s skill1 matches 3 run tag @s add skill1_use
execute if score @s skill2 matches 3 run tag @s add skill2_use
execute if score @s skill3 matches 3 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0003
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

execute if entity @s[advancements={ex3:general/attack/dealt/melee/=true}] run function ex3:items/skill/0003/chase
execute if entity @s[tag=spectate_skill,tag=!marker_chase] run function ex3:items/skill/0003/spectate


function ex3:items/skill/bulk


execute if entity @s[tag=marker_chase] run tag @s remove marker_chase
