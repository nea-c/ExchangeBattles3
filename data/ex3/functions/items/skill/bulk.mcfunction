#スキル使用処理(CT配置及びtag削除一環処理)

tag @s add skill-bulk
tag @s add skill-used

scoreboard players operation #ct value *= #20 value
execute if score #ct value2 matches 1.. run scoreboard players operation #ct value2 *= #20 value

execute if entity @s[tag=emit] run scoreboard players operation #ct value *= #2 value
execute if score #ct value2 matches 1.. if entity @s[tag=emit] run scoreboard players operation #ct value2 *= #2 value

execute if score #ct value2 matches 1.. run scoreboard players operation @s skill1_ct += #ct value2
execute if score #ct value2 matches 1.. run scoreboard players operation @s skill2_ct += #ct value2
execute if score #ct value2 matches 1.. run scoreboard players operation @s skill3_ct += #ct value2

execute if entity @s[tag=skill1_use] run scoreboard players operation @s skill1_ct = #ct value
execute if entity @s[tag=skill2_use] run scoreboard players operation @s skill2_ct = #ct value
execute if entity @s[tag=skill3_use] run scoreboard players operation @s skill3_ct = #ct value

execute if entity @s[tag=skill1_use] run tag @s add skill1_use--
execute if entity @s[tag=skill2_use] run tag @s add skill2_use--
execute if entity @s[tag=skill3_use] run tag @s add skill3_use--

execute if score #ct value2 matches 1.. run tag @s add skill1_use--
execute if score #ct value2 matches 1.. run tag @s add skill2_use--
execute if score #ct value2 matches 1.. run tag @s add skill3_use--

execute if entity @s[tag=skill1_use--] run tag @s remove skill1_ready
execute if entity @s[tag=skill2_use--] run tag @s remove skill2_ready
execute if entity @s[tag=skill3_use--] run tag @s remove skill3_ready

execute if entity @s[tag=skill1_use--] run scoreboard players operation @s skill1_ct_max = @s skill1_ct
execute if entity @s[tag=skill2_use--] run scoreboard players operation @s skill2_ct_max = @s skill2_ct
execute if entity @s[tag=skill3_use--] run scoreboard players operation @s skill3_ct_max = @s skill3_ct

function ex3:items/support/skill-activate/default

execute if score #ct value2 matches 1.. run tag @s add skill1_use
execute if score #ct value2 matches 1.. run tag @s add skill2_use
execute if score #ct value2 matches 1.. run tag @s add skill3_use

execute if entity @s[tag=!creative] run function ex3:items/skill/0010/auxiliary/check/0
execute if entity @s[tag=!creative] run function ex3:items/skill/0015/auxiliary/check/0

execute if entity @s[tag=skill1_use,tag=!dont_place1,tag=!dont_place,tag=!creative] run function ex3:items/skill/cooltime/slot1_set
execute if entity @s[tag=skill2_use,tag=!dont_place2,tag=!dont_place,tag=!creative] run function ex3:items/skill/cooltime/slot2_set
execute if entity @s[tag=skill3_use,tag=!dont_place3,tag=!dont_place,tag=!creative] run function ex3:items/skill/cooltime/slot3_set

scoreboard players reset #ct

execute if entity @s[tag=skill1_use] run tag @s remove skill1_use
execute if entity @s[tag=skill2_use] run tag @s remove skill2_use
execute if entity @s[tag=skill3_use] run tag @s remove skill3_use
execute if entity @s[tag=skill1_use--] run tag @s remove skill1_use--
execute if entity @s[tag=skill2_use--] run tag @s remove skill2_use--
execute if entity @s[tag=skill3_use--] run tag @s remove skill3_use--
execute if entity @s[tag=dont_place] run tag @s remove dont_place
execute if entity @s[tag=dont_place1] run tag @s remove dont_place1
execute if entity @s[tag=dont_place2] run tag @s remove dont_place2
execute if entity @s[tag=dont_place3] run tag @s remove dont_place3
tag @s remove skill-bulk
