#メニュー閉じ状態
fill ~-8 ~3 ~ ~8 ~-1 ~ minecraft:air
fill ~-8 ~3 ~1 ~8 ~-1 ~1 minecraft:gray_concrete
setblock ~ ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.4"}}',Text2:'{"text":"メニュー","bold":true,"color":"black","clickEvent":{"action":"run_command","value":"scoreboard players set #menu_open value 1"}}',Text3:'{"text":"右クリック","color":"black","clickEvent":{"action":"run_command","value":""}}',Text4:'{"text":"------------------","color":"black"}'}
scoreboard players reset #menu_open_pos
scoreboard players reset #menu_opened
