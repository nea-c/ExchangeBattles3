#ゲーム開始
fill ~ ~2 ~ ~-16 ~-2 ~ minecraft:air
fill ~ ~2 ~1 ~-16 ~-2 ~1 minecraft:gray_concrete
execute unless score #playsound_invalid value matches 1 run playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2


execute if score #game_auto_start_timer value matches 1.. run function ex3:game/auto_start/cancel

#戻る
setblock ~-3 ~-2 ~1 minecraft:warped_stem[axis=z]
setblock ~-3 ~-2 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"戻る","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black","clickEvent":{"action":"run_command","value":"playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2"}}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"execute positioned 0 102 12 run function ex3:lobby/menu/opened"}}'}

#
setblock ~-5 ~-1 ~1 netherite_block
setblock ~-5 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"#ee0000"}',Text2:'{"text":"ゲーム開始","bold":true,"color":"#ee0000"}',Text3:'{"text":"右クリック","color":"#ee0000","clickEvent":{"action":"run_command","value":"function ex3:game/start/check"}}',Text4:'{"text":"------------------","color":"#ee0000","clickEvent":{"action":"run_command","value":""}}'}


setblock ~-6 ~-1 ~1 netherite_block
setblock ~-6 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"#ee0000"}',Text2:'{"text":"自動開始時間で開始","bold":true,"color":"#ee0000"}',Text3:'{"text":"右クリック","color":"#ee0000","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/game_start/auto/select"}}',Text4:'{"text":"------------------","color":"#ee0000","clickEvent":{"action":"run_command","value":""}}'}


setblock ~-7 ~-1 ~1 smooth_stone
execute if score #game_auto_start value matches 1 run setblock ~-7 ~-1 ~1 gold_block
setblock ~-7 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"自動開始","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/game_start/auto/toggle"}}'}





setblock ~-8 ~-1 ~1 dark_oak_log[axis=z]
setblock ~-8 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"自動開始時間","bold":true,"color":"black"}',Text3:'["",{"score":{"name":"#game_auto_start_time","objective":"value"},"color":"black"},{"text":"秒","color":"black"}]',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/game_start/auto/time_limit/setting"}}'}





execute if score #playsound_invalid value matches 1 run scoreboard players reset #playsound_invalid