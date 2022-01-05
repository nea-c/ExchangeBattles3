#ステージ
fill ~ ~2 ~ ~-16 ~-2 ~ minecraft:air
fill ~ ~2 ~1 ~-16 ~-2 ~1 minecraft:gray_concrete
#scoreboard players set #menu_open_pos value 7
playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2

#戻る
setblock ~-3 ~-2 ~1 minecraft:warped_stem[axis=z]
setblock ~-3 ~-2 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"戻る","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black","clickEvent":{"action":"run_command","value":"playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2"}}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"execute positioned 0 102 12 run function ex3:lobby/menu/opened"}}'}

#ランダム
setblock ~-2 ~-1 ~1 minecraft:netherite_block
setblock ~-2 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"ランダム","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/stage/random/select"}}'}

fill ~-5 ~-1 ~1 ~-7 ~-1 ~1 smooth_stone
#地下鉄
execute if score #stage_random_subway value matches 1 run setblock ~-5 ~-1 ~1 minecraft:gold_block
setblock ~-5 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"地下鉄","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/stage/subway/open"}}'}
#インボリュート
execute if score #stage_random_involute value matches 1 run setblock ~-6 ~-1 ~1 minecraft:gold_block
setblock ~-6 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"インボリュート","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/stage/involute/open"}}'}
#ファーマメント
execute if score #stage_random_firmament value matches 1 run setblock ~-7 ~-1 ~1 minecraft:gold_block
setblock ~-7 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"ファーマメント","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/stage/firmament/open"}}'}
