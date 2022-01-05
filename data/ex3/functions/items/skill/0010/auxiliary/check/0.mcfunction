#スキル10補助
scoreboard players set #slot_pos value -1000
execute if score @s skill1 matches 10 run scoreboard players operation #slot_pos value = @s skill1_pos
execute if score @s skill2 matches 10 run scoreboard players operation #slot_pos value = @s skill2_pos
execute if score @s skill3 matches 10 run scoreboard players operation #slot_pos value = @s skill3_pos
execute unless score #slot_pos value matches -1000 run tag @s add using

execute if entity @s[tag=using] run function ex3:items/skill/0010/auxiliary/check/1

scoreboard players reset #slot_pos