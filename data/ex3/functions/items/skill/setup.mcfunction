#スキルCT及び配置の呼び出し

execute if entity @s[tag=!creative] run function ex3:items/skill/0010/auxiliary/check/0
execute if entity @s[tag=!creative] run function ex3:items/skill/0015/auxiliary/check/0

execute if score @s[tag=!dont_place1,tag=!creative] skill1_ct matches 1.. run function ex3:items/skill/cooltime/slot1_set
execute if score @s[tag=!dont_place2,tag=!creative] skill2_ct matches 1.. run function ex3:items/skill/cooltime/slot2_set
execute if score @s[tag=!dont_place3,tag=!creative] skill3_ct matches 1.. run function ex3:items/skill/cooltime/slot3_set

execute if score @s skill1_ct matches 0 run tag @s add skill_ready_setup
execute if score @s skill2_ct matches 0 run tag @s add skill_ready_setup
execute if score @s skill3_ct matches 0 run tag @s add skill_ready_setup
execute if entity @s[tag=skill_ready_setup,tag=!creative] run function ex3:items/skill/item_set
tag @s[tag=skill_ready_setup] remove skill_ready_setup

tag @s[tag=dont_place1] remove dont_place1
tag @s[tag=dont_place2] remove dont_place2
tag @s[tag=dont_place3] remove dont_place3