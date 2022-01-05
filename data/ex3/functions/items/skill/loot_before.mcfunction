
execute if score #item value matches 18 run function ex3:items/skill/0018/using_check
execute if score #item value matches 24 run function ex3:items/skill/0024/cant-use_check
execute if score #item value matches 33 run function ex3:items/skill/0033/using_check
execute if score #item value matches 35 run function ex3:items/skill/0035/using_check


execute if score @s skill1 = #item value if score @s skill1_ct matches 0 run scoreboard players set #slot value 1
execute if score @s skill1 = #item value if score @s skill1_ct matches 0 run scoreboard players operation #slot_pos value = @s skill1_pos
execute if score @s skill2 = #item value if score @s skill2_ct matches 0 run scoreboard players set #slot value 2
execute if score @s skill2 = #item value if score @s skill2_ct matches 0 run scoreboard players operation #slot_pos value = @s skill2_pos
execute if score @s skill3 = #item value if score @s skill3_ct matches 0 run scoreboard players set #slot value 3
execute if score @s skill3 = #item value if score @s skill3_ct matches 0 run scoreboard players operation #slot_pos value = @s skill3_pos

function ex3:items/loot/skill

execute if score #slot value matches 1 if score @s skill1_ct matches 0 store result block 0 0 0 Items[0].tag.skill_number int 1 run scoreboard players get @s skill1
execute if score #slot value matches 1 if score @s skill1_ct matches 0 run data modify block 0 0 0 Items[0].tag.skill_slot set value 1
execute if score #slot value matches 1 if score @s skill1_ct matches 0 run loot replace block 0 0 0 container.1 loot ex3:items/skill/slot1_number_insert

execute if score #slot value matches 2 if score @s skill2_ct matches 0 store result block 0 0 0 Items[0].tag.skill_number int 1 run scoreboard players get @s skill2
execute if score #slot value matches 2 if score @s skill2_ct matches 0 run data modify block 0 0 0 Items[0].tag.skill_slot set value 2
execute if score #slot value matches 2 if score @s skill2_ct matches 0 run loot replace block 0 0 0 container.1 loot ex3:items/skill/slot2_number_insert

execute if score #slot value matches 3 if score @s skill3_ct matches 0 store result block 0 0 0 Items[0].tag.skill_number int 1 run scoreboard players get @s skill3
execute if score #slot value matches 3 if score @s skill3_ct matches 0 run data modify block 0 0 0 Items[0].tag.skill_slot set value 3
execute if score #slot value matches 3 if score @s skill3_ct matches 0 run loot replace block 0 0 0 container.1 loot ex3:items/skill/slot3_number_insert

data modify block 0 0 0 Items[0].tag.display.Lore prepend from block 0 0 0 Items[1].tag.display.Name


execute if entity @s[tag=cant-use] run loot replace block 0 0 0 container.1 loot ex3:items/cant-use_insert
execute if entity @s[tag=cant-use] run data modify block 0 0 0 Items[0].tag.display.Name set from block 0 0 0 Items[1].tag.display.Name
execute if entity @s[tag=cant-use] run tag @s remove cant-use

execute if entity @s[tag=using] run loot replace block 0 0 0 container.1 loot ex3:items/using
execute if entity @s[tag=using] run data modify block 0 0 0 Items[0].tag.display.Name set from block 0 0 0 Items[1].tag.display.Name
execute if entity @s[tag=using] run data modify block 0 0 0 Items[0].tag.Enchantments set value [{}]
execute if entity @s[tag=using] run tag @s remove using

function ex3:items/loot/end

scoreboard players reset #item
scoreboard players reset #slot