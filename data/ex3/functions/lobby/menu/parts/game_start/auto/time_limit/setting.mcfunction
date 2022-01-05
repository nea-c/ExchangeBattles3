#個別制限時間設定
execute positioned 0 102 12 positioned 8 ~1 ~ run fill ~ ~2 ~ ~-16 ~-2 ~ minecraft:air
execute positioned 0 102 12 positioned 8 ~1 ~ run fill ~ ~2 ~1 ~-16 ~-2 ~1 minecraft:gray_concrete
fill ~3 ~ ~1 ~-2 ~ ~1 minecraft:dark_oak_log[axis=z]
setblock ~ ~ ~1 minecraft:gold_block

execute unless score #playsound_invalid value matches 1 run playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2

execute if score #game_auto_start_time_dummy value matches ..30 run scoreboard players set #game_auto_start_time_dummy value 30
execute if score #game_auto_start_time_dummy value matches 120.. run scoreboard players set #game_auto_start_time_dummy value 120
execute unless score #game_auto_start_time_dummy value matches 0.. run scoreboard players operation #game_auto_start_time_dummy value = #game_auto_start_time value

setblock ~3 ~ ~1 warped_stem[axis=z]
setblock ~3 ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"scoreboard players reset #game_auto_start_time_dummy"}}',Text2:'{"text":"戻る","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"execute positioned 8 ~1 ~ run function ex3:lobby/menu/parts/game_start/open"}}'}

setblock ~2 ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"scoreboard players remove #game_auto_start_time_dummy value 10"}}',Text2:'{"text":"-10","bold":true,"color":"black","clickEvent":{"action":"run_command","value":"scoreboard players set #playsound_invalid value 1"}}',Text3:'{"text":"右クリック","color":"black","clickEvent":{"action":"run_command","value":"playsound minecraft:block.lever.click master @a"}}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"execute positioned ~-2 ~ ~ run function ex3:lobby/menu/parts/game_start/auto/time_limit/setting"}}'}
setblock ~1 ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"scoreboard players remove #game_auto_start_time_dummy value 1"}}',Text2:'{"text":"-1","bold":true,"color":"black","clickEvent":{"action":"run_command","value":"scoreboard players set #playsound_invalid value 1"}}',Text3:'{"text":"右クリック","color":"black","clickEvent":{"action":"run_command","value":"playsound minecraft:block.lever.click master @a"}}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"execute positioned ~-1 ~ ~ run function ex3:lobby/menu/parts/game_start/auto/time_limit/setting"}}'}

setblock ~-1 ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"scoreboard players add #game_auto_start_time_dummy value 1"}}',Text2:'{"text":"+1","bold":true,"color":"black","clickEvent":{"action":"run_command","value":"scoreboard players set #playsound_invalid value 1"}}',Text3:'{"text":"右クリック","color":"black","clickEvent":{"action":"run_command","value":"playsound minecraft:block.lever.click master @a"}}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"execute positioned ~1 ~ ~ run function ex3:lobby/menu/parts/game_start/auto/time_limit/setting"}}'}
setblock ~-2 ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"scoreboard players add #game_auto_start_time_dummy value 10"}}',Text2:'{"text":"+10","bold":true,"color":"black","clickEvent":{"action":"run_command","value":"scoreboard players set #playsound_invalid value 1"}}',Text3:'{"text":"右クリック","color":"black","clickEvent":{"action":"run_command","value":"playsound minecraft:block.lever.click master @a"}}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"execute positioned ~2 ~ ~ run function ex3:lobby/menu/parts/game_start/auto/time_limit/setting"}}'}

setblock ~ ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'["",{"score":{"name":"#game_auto_start_time_dummy","objective":"value"},"bold":true,"color":"black"},{"text":"秒","bold":true,"color":"black"}]',Text3:'{"text":"右クリック","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/game_start/auto/time_limit/decision"}}'}



execute if score #playsound_invalid value matches 1 run scoreboard players reset #playsound_invalid