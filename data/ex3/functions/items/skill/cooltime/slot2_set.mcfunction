#slot2
scoreboard players operation #slot_pos value = @s skill2_pos
scoreboard players operation #skill_ct value = @s skill2_ct
scoreboard players add #skill_ct value 19
scoreboard players operation #skill_ct value /= #20 value

execute if score #skill_ct value matches 1..60 run loot replace block 0 0 0 container.0 loot ex3:items/cooltime/compass
execute if score #skill_ct value matches 1..60 run data modify block 0 0 0 Items[0].tag.skill_slot set value 2
execute if score #skill_ct value matches 1..60 store result block 0 0 0 Items[0].Count byte 1 run scoreboard players get #skill_ct value

execute if score #skill_ct value matches 1.. run scoreboard players add #skill_ct value 59
execute if score #skill_ct value matches 1.. run scoreboard players operation #skill_ct value /= #60 value
execute if score #skill_ct value matches 2..60 run loot replace block 0 0 0 container.0 loot ex3:items/cooltime/clock
execute if score #skill_ct value matches 2..60 run data modify block 0 0 0 Items[0].tag.skill_slot set value 2
execute if score #skill_ct value matches 2..60 store result block 0 0 0 Items[0].Count byte 1 run scoreboard players get #skill_ct value

loot replace block 0 0 0 container.1 loot ex3:items/skill/slot2_number_insert
data modify block 0 0 0 Items[0].tag.display.Lore prepend from block 0 0 0 Items[1].tag.display.Name

scoreboard players reset #skill_ct
function ex3:items/loot/end