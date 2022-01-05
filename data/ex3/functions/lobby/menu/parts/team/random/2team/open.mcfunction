#個別制限時間設定
execute positioned 0 102 12 positioned 8 ~1 ~ run fill ~ ~2 ~ ~-16 ~-2 ~ minecraft:air
execute positioned 0 102 12 positioned 8 ~1 ~ run fill ~ ~2 ~1 ~-16 ~-2 ~1 minecraft:gray_concrete
execute unless score #playsound_invalid value matches 1 run playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2

setblock ~1 ~ ~1 warped_stem[axis=z]
setblock ~1 ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":""}}',Text2:'{"text":"戻る","bold":true,"color":"black","clickEvent":{"action":"run_command","value":""}}',Text3:'{"text":"右クリック","color":"black","clickEvent":{"action":"run_command","value":""}}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"execute positioned ~-1 ~ ~ run function ex3:lobby/menu/parts/team/random/open"}}'}

setblock ~ ~ ~1 netherite_block
setblock ~ ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":""}}',Text2:'{"text":"観戦者以外","bold":true,"color":"black","clickEvent":{"action":"run_command","value":""}}',Text3:'{"text":"右クリック","color":"black","clickEvent":{"action":"run_command","value":""}}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/team/random/2team/select"}}'}

setblock ~-1 ~ ~1 netherite_block
setblock ~-1 ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":""}}',Text2:'{"text":"全員","bold":true,"color":"black","clickEvent":{"action":"run_command","value":"scoreboard players set #team_random-all_player value 1"}}',Text3:'{"text":"右クリック","color":"black","clickEvent":{"action":"run_command","value":""}}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/team/random/2team/select"}}'}





execute if score #playsound_invalid value matches 1 run scoreboard players reset #playsound_invalid