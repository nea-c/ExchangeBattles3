#スキル配置の呼び出し

execute if entity @s[tag=!skill1_ready,scores={skill1_ct=0},gamemode=!spectator] at @s run playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2
execute if entity @s[tag=!skill1_ready,scores={skill1_ct=0},gamemode=!spectator] run tag @s add skill1_ready

execute if entity @s[tag=!skill2_ready,scores={skill2_ct=0},gamemode=!spectator] at @s run playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2
execute if entity @s[tag=!skill2_ready,scores={skill2_ct=0},gamemode=!spectator] run tag @s add skill2_ready

execute if entity @s[tag=!skill3_ready,scores={skill3_ct=0},gamemode=!spectator] at @s run playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2
execute if entity @s[tag=!skill3_ready,scores={skill3_ct=0},gamemode=!spectator] run tag @s add skill3_ready


execute if score @s[tag=!dont_place1] skill1_ct matches 0 store result score #item value run scoreboard players get @s skill1
execute if entity @s[tag=!dont_place1] run function ex3:items/skill/loot_before

execute if score @s[tag=!dont_place2] skill2_ct matches 0 store result score #item value run scoreboard players get @s skill2
execute if entity @s[tag=!dont_place2] run function ex3:items/skill/loot_before

execute if score @s[tag=!dont_place3] skill3_ct matches 0 store result score #item value run scoreboard players get @s skill3
execute if entity @s[tag=!dont_place3] run function ex3:items/skill/loot_before