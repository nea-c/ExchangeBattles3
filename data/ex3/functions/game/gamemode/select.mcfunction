#ランダムゲームモード処理
##setting_gamemodeのvalueスコアが0の時に呼び出されるので、ゲームモード番号に0を使用しないでください

execute if score #gamemode_random_pvp_2team_deathmatch value matches 1 run summon area_effect_cloud 0 8 0 {Duration:1,Tags:["gamemode_random","pvp_2team_deathmatch"]}
execute if score #gamemode_random_pvp_2team_slaughter value matches 1 run summon area_effect_cloud 0 8 0 {Duration:1,Tags:["gamemode_random","pvp_2team_slaughter"]}
execute if score #gamemode_random_pvp_2team_protect value matches 1 run summon area_effect_cloud 0 8 0 {Duration:1,Tags:["gamemode_random","pvp_2team_protect"]}
execute if score #gamemode_random_pvp_2team_emit value matches 1 run summon area_effect_cloud 0 8 0 {Duration:1,Tags:["gamemode_random","pvp_2team_emit"]}
execute if score #gamemode_random_pvp_ffa_battleroyal value matches 1 run summon area_effect_cloud 0 8 0 {Duration:1,Tags:["gamemode_random","pvp_ffa_battleroyal"]}
#execute if score #gamemode_random_pve_ value matches 1 run summon area_effect_cloud 0 8 0 {Duration:1,Tags:["gamemode_random","pve_"]}
tag @e[type=minecraft:area_effect_cloud,tag=gamemode_random,limit=1,sort=random] add select


execute as @e[type=minecraft:area_effect_cloud,tag=gamemode_random,tag=!select] run kill @s


execute if entity @e[type=minecraft:area_effect_cloud,tag=gamemode_random,tag=select,tag=pvp_2team_deathmatch] run scoreboard players set #gamemode value 1101
execute if entity @e[type=minecraft:area_effect_cloud,tag=gamemode_random,tag=select,tag=pvp_2team_slaughter] run scoreboard players set #gamemode value 1102
execute if entity @e[type=minecraft:area_effect_cloud,tag=gamemode_random,tag=select,tag=pvp_2team_protect] run scoreboard players set #gamemode value 1103
execute if entity @e[type=minecraft:area_effect_cloud,tag=gamemode_random,tag=select,tag=pvp_2team_emit] run scoreboard players set #gamemode value 1104
execute if entity @e[type=minecraft:area_effect_cloud,tag=gamemode_random,tag=select,tag=pvp_ffa_battleroyal] run scoreboard players set #gamemode value 1201
#execute if entity @e[type=minecraft:area_effect_cloud,tag=gamemode_random,tag=select,tag=pve_] run scoreboard players set #gamemode value 2101



execute unless entity @e[type=minecraft:area_effect_cloud,tag=gamemode_random,tag=select] run scoreboard players reset #game_start_checker
execute unless entity @e[type=minecraft:area_effect_cloud,tag=gamemode_random,tag=select] run tellraw @a ["",{"text":"------------------------------","color":"#ee0000"},{"text":"\n[システム] 選択できるゲームモードがオプションに存在しません","color":"white"},{"text":"\n[システム] ランダムオプションを再度設定し、開始してください","color":"white"},{"text":"\n------------------------------","color":"#ee0000"}]

