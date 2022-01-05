
scoreboard players operation #- team_number = @s team_number
scoreboard players operation #- number = @s number
tag @s add spectator_this
execute if entity @e[tag=skill17-stand,limit=1] as @e[tag=skill17-stand] if score @s number = #- number as @a[tag=spectator_this] if entity @e[tag=!spectator_this,scores={max_health=0..},distance=0,limit=1] run tag @s add spectate_skill
#execute if entity @e[tag=!spectator_this,scores={max_health=0..},distance=0,scores={},limit=1] run tag @s add spectate_skill
execute if entity @s[tag=spectate_skill] if entity @e[tag=!spectator_this,scores={max_health=0..},distance=0,limit=1] as @e[tag=!spectator_this,scores={max_health=0..},distance=0] unless score @s team_number = #- team_number run tag @a[tag=spectator_this,limit=1] add spectate_skill_enemy

#マーカー
execute if entity @s[scores={skill1=3,skill1_ct=0},tag=spectate_skill_enemy] run function ex3:items/skill/0003/use
execute if entity @s[scores={skill2=3,skill2_ct=0},tag=spectate_skill_enemy] run function ex3:items/skill/0003/use
execute if entity @s[scores={skill3=3,skill3_ct=0},tag=spectate_skill_enemy] run function ex3:items/skill/0003/use


scoreboard players reset #-
execute if entity @s[tag=spectate_skill] run tag @s remove spectate_skill
execute if entity @s[tag=spectate_skill_enemy] run tag @s remove spectate_skill_enemy
tag @s remove spectator_this