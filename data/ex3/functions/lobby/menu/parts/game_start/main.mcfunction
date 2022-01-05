#ゲーム開始
setblock ~ ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"ゲーム開始","bold":true,"color":"#ee0000","clickEvent":{"action":"run_command","value":"execute positioned 8 ~1 ~ run function ex3:lobby/menu/parts/game_start/open"}}',Text3:'["",{"text":"右クリック","color":"black"}]',Text4:'{"text":"------------------","color":"black"}'}
