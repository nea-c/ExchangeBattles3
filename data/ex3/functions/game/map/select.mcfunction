#ランダムステージ処理
##setting_stageのvalueスコアが0の時に呼び出されるので、ゲームモード番号に0を使用しないでください

execute if score #stage_random_subway value matches 1 run summon area_effect_cloud 0 8 0 {Duration:1,Tags:["stage_random","subway"]}
execute if score #stage_random_involute value matches 1 run summon area_effect_cloud 0 8 0 {Duration:1,Tags:["stage_random","involute"]}
execute if score #stage_random_firmament value matches 1 run summon area_effect_cloud 0 8 0 {Duration:1,Tags:["stage_random","firmament"]}
tag @e[type=minecraft:area_effect_cloud,tag=stage_random,sort=random,limit=1] add select


execute as @e[type=minecraft:area_effect_cloud,tag=stage_random,tag=!select] run kill @s


execute if entity @e[type=minecraft:area_effect_cloud,tag=stage_random,tag=select,tag=subway] run scoreboard players set #stage value 1
execute if entity @e[type=minecraft:area_effect_cloud,tag=stage_random,tag=select,tag=involute] run scoreboard players set #stage value 2
execute if entity @e[type=minecraft:area_effect_cloud,tag=stage_random,tag=select,tag=firmament] run scoreboard players set #stage value 3



execute unless entity @e[type=minecraft:area_effect_cloud,tag=stage_random,tag=select] run scoreboard players reset #game_start_checker
execute unless entity @e[type=minecraft:area_effect_cloud,tag=stage_random,tag=select] run tellraw @a ["",{"text":"------------------------------","color":"#ee0000"},{"text":"\n[システム] 選択できるステージがオプションに存在しません","color":"white"},{"text":"\n[システム] ランダムオプションを再度設定し、開始してください","color":"white"},{"text":"\n------------------------------","color":"#ee0000"}]

