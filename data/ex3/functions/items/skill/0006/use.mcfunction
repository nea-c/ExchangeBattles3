#スキル6
execute if score @s skill1 matches 6 run tag @s add skill1_use
execute if score @s skill2 matches 6 run tag @s add skill2_use
execute if score @s skill3 matches 6 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0006
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk


execute if entity @s[advancements={ex3:general/attack/melee_dealt=true}] run function ex3:items/skill/0006/chase/execution
execute if entity @s[predicate=ex3:general/sneak,tag=!skill6-chase,tag=!skill2-melt_now] run function ex3:items/skill/0006/resistance/execution
execute if entity @s[scores={jump=1..},tag=!skill6-chase,tag=!skill6-resistance] run function ex3:items/skill/0006/heal/main


execute if entity @s[tag=skill6-chase] run tag @s remove skill6-chase
execute if entity @s[tag=skill6-resistance] run tag @s remove skill6-resistance

tag @s add skill6-used
