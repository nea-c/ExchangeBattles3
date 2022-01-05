#自然回復
fill ~ ~2 ~ ~-16 ~-2 ~ minecraft:air
fill ~ ~2 ~1 ~-16 ~-2 ~1 minecraft:gray_concrete
playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2


#戻る
setblock ~-3 ~-2 ~1 minecraft:warped_stem[axis=z]
setblock ~-3 ~-2 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"戻る","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black","clickEvent":{"action":"run_command","value":"playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2"}}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"execute positioned 0 102 12 run function ex3:lobby/menu/opened"}}'}

fill ~-5 ~-1 ~1 ~-6 ~-1 ~1 netherite_block
#オン
setblock ~-5 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"オン","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/regeneration/on"}}'}

#オフ
setblock ~-6 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"オフ","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/regeneration/off"}}'}
