
loot replace block 0 0 0 container.0 loot ex3:items/skill/0031
execute store result score #- value run data get block 0 0 0 Items[0].tag.cooltime[1] 1
data remove block 0 0 0 Items[]
scoreboard players operation #- value *= #20 value
execute store result score #- value2 if entity @a[tag=skill31-buff-add]
scoreboard players operation #- value *= #- value2
function ex3:items/support/skill-activate/add
execute if entity @e[tag=skill31-this,tag=slot1,limit=1] run scoreboard players operation @s skill1_ct += #- value
execute if entity @e[tag=skill31-this,tag=slot1,limit=1] run scoreboard players operation @s skill1_ct_max += #- value
execute if entity @e[tag=skill31-this,tag=slot2,limit=1] run scoreboard players operation @s skill2_ct += #- value
execute if entity @e[tag=skill31-this,tag=slot2,limit=1] run scoreboard players operation @s skill2_ct_max += #- value
execute if entity @e[tag=skill31-this,tag=slot3,limit=1] run scoreboard players operation @s skill3_ct += #- value
execute if entity @e[tag=skill31-this,tag=slot3,limit=1] run scoreboard players operation @s skill3_ct_max += #- value
execute if entity @e[tag=skill31-this,limit=1] run function ex3:items/skill/setup

scoreboard players reset #-