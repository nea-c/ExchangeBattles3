#個別制限時間設定
execute positioned 0 102 12 positioned 8 ~1 ~ run fill ~ ~2 ~ ~-16 ~-2 ~ minecraft:air
execute positioned 0 102 12 positioned 8 ~1 ~ run fill ~ ~2 ~1 ~-16 ~-2 ~1 minecraft:gray_concrete
fill ~2 ~ ~1 ~-2 ~ ~1 minecraft:dark_oak_log[axis=z]

execute unless score #playsound_invalid value matches 1 run playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2


setblock ~2 ~ ~1 warped_stem[axis=z]
setblock ~2 ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"scoreboard players reset #setting_difficulty_dummy"}}',Text2:'{"text":"戻る","bold":true,"color":"black","clickEvent":{"action":"run_command","value":""}}',Text3:'{"text":"右クリック","color":"black","clickEvent":{"action":"run_command","value":""}}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"execute positioned ~1 ~ ~ run function ex3:lobby/menu/parts/gamemode/pve/boss/neac/open"}}'}

setblock ~1 ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"scoreboard players set #setting_difficulty_dummy value 1"}}',Text2:'{"text":"Easy","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"execute positioned ~-1 ~ ~ run function ex3:lobby/menu/parts/gamemode/pve/boss/neac/difficulty/decision"}}'}

setblock ~ ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"scoreboard players set #setting_difficulty_dummy value 2"}}',Text2:'["",{"text":"Normal","bold":true,"color":"black"}]',Text3:'{"text":"右クリック","color":"black","clickEvent":{"action":"run_command","value":""}}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/gamemode/pve/boss/neac/difficulty/decision"}}'}

setblock ~-1 ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"scoreboard players set #setting_difficulty_dummy value 3"}}',Text2:'{"text":"Hard","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"execute positioned ~1 ~ ~ run function ex3:lobby/menu/parts/gamemode/pve/boss/neac/difficulty/decision"}}'}
setblock ~-2 ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"scoreboard players set #setting_difficulty_dummy value 4"}}',Text2:'{"text":"Extreme","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"execute positioned ~2 ~ ~ run function ex3:lobby/menu/parts/gamemode/pve/boss/neac/difficulty/decision"}}'}





execute if score #playsound_invalid value matches 1 run scoreboard players reset #playsound_invalid