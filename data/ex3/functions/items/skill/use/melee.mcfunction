
scoreboard players set #has_skill value -1
scoreboard players set #has_skill_ct value -1

execute store result score #has_skill value run data get entity @s SelectedItem.tag.CustomModelData

execute if score #has_skill value matches 30000.. run scoreboard players operation #has_skill value %= #10000 value

execute if score #has_skill value = @s skill1 run scoreboard players operation #has_skill_ct value = @s skill1_ct
execute if score #has_skill value = @s skill2 run scoreboard players operation #has_skill_ct value = @s skill2_ct
execute if score #has_skill value = @s skill3 run scoreboard players operation #has_skill_ct value = @s skill3_ct


#マーカー
execute if entity @s[scores={skill1=3,skill1_ct=0}] run function ex3:items/skill/0003/use
execute if entity @s[scores={skill2=3,skill2_ct=0}] run function ex3:items/skill/0003/use
execute if entity @s[scores={skill3=3,skill3_ct=0}] run function ex3:items/skill/0003/use


#レリーヴストーン
execute if entity @s[tag=!skill6-used] if score #has_skill value matches 6 if score #has_skill_ct value matches 0 run function ex3:items/skill/0006/use


scoreboard players reset #has_skill
scoreboard players reset #has_skill_ct


