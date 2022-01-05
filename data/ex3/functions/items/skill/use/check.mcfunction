#スキル使用処理

scoreboard players set #has_skill value -1
scoreboard players set #has_skill_ct value -1

execute store result score #has_skill value run data get entity @s SelectedItem.tag.CustomModelData

execute if score #has_skill value matches 30000.. run scoreboard players operation #has_skill value %= #10000 value

execute if score #has_skill value = @s skill1 run scoreboard players operation #has_skill_ct value = @s skill1_ct
execute if score #has_skill value = @s skill2 run scoreboard players operation #has_skill_ct value = @s skill2_ct
execute if score #has_skill value = @s skill3 run scoreboard players operation #has_skill_ct value = @s skill3_ct


scoreboard players operation #- number = @s number

tag @s add skill2_me-
execute as @e[tag=skill2-meltshock] run function ex3:items/skill/0002/check
tag @s remove skill2_me-

execute if entity @s[advancements={ex3:general/attack/melee_dealt=true}] run function ex3:items/skill/use/melee
execute if entity @s[predicate=ex3:general/sneak] run function ex3:items/skill/use/sneak
execute if entity @s[scores={jump=1..}] run function ex3:items/skill/use/jump
execute if entity @s[scores={drop=1..},tag=!skill_no_drop] run function ex3:items/skill/use/drop
execute if entity @s[scores={use.fungus_stick=1..}] run function ex3:items/skill/use/fungus_stick
execute if entity @s[scores={use.carrot_stick=1..}] run function ex3:items/skill/use/carrot_stick
execute if entity @s[nbt={ActiveEffects:[{Id:15b}]},scores={health=1..},tag=!not-blind-now] run function ex3:items/skill/use/blind
execute if entity @s[scores={use.snowball=1..}] run function ex3:items/skill/use/snowball
execute if entity @s[scores={use.splash_potion=1..}] run function ex3:items/skill/use/potion
execute if entity @s[scores={use.lingering_potion=1..}] run function ex3:items/skill/use/potion


execute if entity @e[tag=arrow-reload-time,limit=1] as @e[tag=arrow-reload-time] if score @s number = #- number run tag @s add arrow-reloading
execute if entity @e[tag=arrow-reloading,limit=1] run function ex3:items/skill/use/arrow_reload
execute if entity @e[tag=arrow-reloading,limit=1] as @e[tag=arrow-reloading] run tag @s remove arrow-reloading



#レリーヴタグ削除
execute if entity @s[tag=skill6-used] run tag @s remove skill6-used

#ショートテレポートパーティクル
execute if entity @s[nbt={OnGround:1b}] if score #has_skill value matches 14 if score #has_skill_ct value matches 0 run function ex3:items/skill/0014/particle_call

#呪縛
#execute if score #has_skill value matches 25 if score #has_skill_ct value matches 0 run function ex3:items/skill/0025/check

#ダッシュブースト
execute if entity @s[scores={skill1=26,skill1_ct=0}] run function ex3:items/skill/0026/use_check
execute if entity @s[scores={skill2=26,skill2_ct=0}] run function ex3:items/skill/0026/use_check
execute if entity @s[scores={skill3=26,skill3_ct=0}] run function ex3:items/skill/0026/use_check

scoreboard players reset #has_skill
scoreboard players reset #has_skill_ct
scoreboard players reset #-

execute if entity @s[tag=skill_no_drop] run tag @s remove skill_no_drop