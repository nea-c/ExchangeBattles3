summon area_effect_cloud ~ ~ ~ {Tags:["useskill"],NoGravity:1b,Duration:1}
execute store result score #boss-skill value run data get entity @e[tag=useskill,limit=1] UUID[0] 0.1
scoreboard players set #boss-skill value2 8
scoreboard players operation #boss-skill value %= #boss-skill value2
scoreboard players add #boss-skill value 1
kill @e[tag=useskill]
scoreboard players add @s value2 1
execute if score @s value2 matches 6 run function ex3:game/gamemode/pve/boss/neac/hate_update
execute if score @s value2 matches 12.. run function ex3:game/gamemode/pve/boss/neac/hate_update
execute if entity @s[tag=b1s22] run tag @s add usedskill
scoreboard players operation #boss-skill health = @s health
scoreboard players operation #boss-skill health *= #100 value
scoreboard players operation #boss-skill health /= @s max_health
#ノーマル以下についての色々処理
#execute if score #difficult value matches ..2 unless score @s skill3_ct matches 1.. if entity @a[distance=..8,gamemode=!spectator] run function ex3:game/gamemode/pve/boss/neac/skill3/discharge
#execute if score #difficult value matches ..2 if score @s health matches ..2000 unless score @s skill2_ct matches 1.. unless entity @a[distance=..16,gamemode=!spectator] run function ex3:game/gamemode/pve/boss/neac/skill2/discharge


#第1形態
execute if score #boss-skill health matches 67.. unless entity @s[tag=usedskill] if score #boss-skill value matches 6.. unless score @s skill1_ct matches 1.. run function ex3:game/gamemode/pve/boss/neac/skill1/use
execute if score #boss-skill health matches 67.. unless entity @s[tag=usedskill] if score #boss-skill value matches 4..5 unless score @s Cooldown7 matches 1.. if entity @a[gamemode=!spectator,distance=..8] run function ex3:game/gamemode/pve/boss/neac/skill7/discharge
execute if score #boss-skill health matches 67.. unless entity @s[tag=usedskill] if score #boss-skill value matches 4..5 unless score @s skill2_ct matches 1.. unless entity @a[gamemode=!spectator,distance=..8] run function ex3:game/gamemode/pve/boss/neac/skill2/discharge
execute if score #boss-skill health matches 67.. unless entity @s[tag=usedskill] if score #boss-skill value matches 1..3 unless score @s Cooldown8 matches 1.. if entity @a[gamemode=!spectator,distance=..10] run function ex3:game/gamemode/pve/boss/neac/skill8/discharge
execute if score #boss-skill health matches 67.. unless entity @s[tag=usedskill] if score #boss-skill value matches 1..3 unless score @s Cooldown9 matches 1.. unless entity @a[gamemode=!spectator,distance=..10] run function ex3:game/gamemode/pve/boss/neac/skill9/3
#第2形態
execute if score #boss-skill health matches 34..66 unless entity @s[tag=usedskill] if score #boss-skill value matches 5.. unless score @s skill1_ct matches 1.. run function ex3:game/gamemode/pve/boss/neac/skill1/use
execute if score #boss-skill health matches 34..66 unless entity @s[tag=usedskill] if score #boss-skill value matches 3..4 unless score @s Cooldown4 matches 1.. run function ex3:game/gamemode/pve/boss/neac/skill4/discharge
execute if score #boss-skill health matches 34..66 unless entity @s[tag=usedskill] if score #boss-skill value matches 1..2 unless score @s Cooldown5 matches 1.. run function ex3:game/gamemode/pve/boss/neac/skill5/discharge
#第3形態
execute if score #boss-skill health matches ..33 unless entity @s[tag=usedskill] if score #boss-skill value matches 5.. unless score @s Cooldown5 matches 1.. run function ex3:game/gamemode/pve/boss/neac/skill5/discharge
execute if score #boss-skill health matches ..33 unless entity @s[tag=usedskill] if score #boss-skill value matches 2..4 unless score @s Cooldown7 matches 1.. if score #difficult value matches 3.. run function ex3:game/gamemode/pve/boss/neac/skill7/discharge
execute if score #boss-skill health matches ..33 unless entity @s[tag=usedskill] if score #boss-skill value matches 2..4 unless score @s Cooldown6 matches 1.. run function ex3:game/gamemode/pve/boss/neac/skill6/discharge
#スキル無使用時の処理
execute if score #boss-skill health matches 34..66 unless entity @s[tag=usedskill] unless score @s Cooldown7 matches 1.. run function ex3:game/gamemode/pve/boss/neac/skill7/discharge
execute if score @s health matches 4001.. unless entity @s[tag=usedskill] run function ex3:game/gamemode/pve/boss/neac/skill0
execute if score #boss-skill health matches ..33 unless entity @s[tag=usedskill] run function ex3:game/gamemode/pve/boss/neac/skill1/use

scoreboard players reset #boss-skill

execute if entity @s[tag=usedskill] run tag @s remove usedskill