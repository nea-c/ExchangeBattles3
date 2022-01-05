#チーム
fill ~ ~2 ~ ~-16 ~-2 ~ minecraft:air
fill ~ ~2 ~1 ~-16 ~-2 ~1 minecraft:gray_concrete
execute unless score #playsound_invalid value matches 1 run playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2

#戻る
setblock ~-3 ~-2 ~1 minecraft:warped_stem[axis=z]
setblock ~-3 ~-2 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"戻る","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black","clickEvent":{"action":"run_command","value":"playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2"}}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"execute positioned 0 102 12 run function ex3:lobby/menu/opened"}}'}



setblock ~-5 ~-1 ~1 dark_oak_log[axis=z]
setblock ~-5 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"振り分け","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/team/random/open"}}'}

setblock ~-6 ~-1 ~1 smooth_stone
execute if score #team_change value matches 1 run setblock ~-6 ~-1 ~1 gold_block
setblock ~-6 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"任意変更","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/team/change/toggle"}}'}




setblock ~-7 ~-1 ~1 smooth_stone
execute if score #team_auto_change value matches 1 run setblock ~-7 ~-1 ~1 gold_block
execute if score #team_auto_change value matches 2 run setblock ~-7 ~-1 ~1 diamond_block
execute if score #team_auto_change value matches 0 run setblock ~-7 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"自動変更","bold":true,"color":"black"}',Text3:'{"text":"オフ","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/team/auto_change/toggle"}}'}
execute if score #team_auto_change value matches 1 run setblock ~-7 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"自動変更","bold":true,"color":"black"}',Text3:'{"text":"ゲーム開始時","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/team/auto_change/toggle"}}'}
execute if score #team_auto_change value matches 2 run setblock ~-7 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"自動変更","bold":true,"color":"black"}',Text3:'{"text":"ゲーム終了時","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/team/auto_change/toggle"}}'}



execute if score #playsound_invalid value matches 1 run scoreboard players reset #playsound_invalid