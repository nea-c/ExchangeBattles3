#スキル10補助

execute if score @s skill1 matches 10 run tag @s add dont_place1
execute if score @s skill2 matches 10 run tag @s add dont_place2
execute if score @s skill3 matches 10 run tag @s add dont_place3


execute if score @s skill1 matches 10 run scoreboard players operation #slot_pos value = @s skill1_pos
execute if score @s skill2 matches 10 run scoreboard players operation #slot_pos value = @s skill2_pos
execute if score @s skill3 matches 10 run scoreboard players operation #slot_pos value = @s skill3_pos
execute if score #slot_pos value = #slot_pos value run loot replace block 0 0 0 container.0 loot ex3:items/skill/auxiliary/0010
execute if score @s skill1 matches 10 run data modify block 0 0 0 Items[0].tag.skill_slot set value 1
execute if score @s skill1 matches 10 run loot replace block 0 0 0 container.1 loot ex3:items/skill/slot1_number_insert
execute if score @s skill2 matches 10 run data modify block 0 0 0 Items[0].tag.skill_slot set value 2
execute if score @s skill2 matches 10 run loot replace block 0 0 0 container.1 loot ex3:items/skill/slot2_number_insert
execute if score @s skill3 matches 10 run data modify block 0 0 0 Items[0].tag.skill_slot set value 3
execute if score @s skill3 matches 10 run loot replace block 0 0 0 container.1 loot ex3:items/skill/slot3_number_insert

data modify block 0 0 0 Items[0].tag.display.Lore prepend from block 0 0 0 Items[1].tag.display.Name

function ex3:items/loot/end