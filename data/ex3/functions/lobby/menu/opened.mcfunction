#メニュー開き状態
fill ~-8 ~3 ~ ~8 ~-1 ~ minecraft:air
fill ~-8 ~3 ~1 ~8 ~-1 ~1 minecraft:gray_concrete

#メニュールーム
#execute positioned ~5 ~ ~ run function ex3:lobby/menu/parts/room_lock/main
#時刻
execute positioned ~4 ~ ~ run function ex3:lobby/menu/parts/time/main
scoreboard players reset #setting_time_change
#チームアーマー
execute positioned ~3 ~ ~ run function ex3:lobby/menu/parts/team_armor/main
#自然回復
execute positioned ~2 ~ ~ run function ex3:lobby/menu/parts/regeneration/main
#エクスチェンジ
execute positioned ~1 ~ ~ run function ex3:lobby/menu/parts/exchange/main
#閉じる
setblock ~ ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.8"}}',Text2:'{"text":"閉じる","bold":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"scoreboard players set #menu_close value 1"}}',Text3:'{"text":"右クリック","color":"black","clickEvent":{"action":"run_command","value":"scoreboard players reset #menu_open_pos"}}',Text4:'{"text":"------------------","color":"black"}'}
#ゲーム開始
execute positioned ~ ~ ~ run function ex3:lobby/menu/parts/game_start/main
#ステージ
execute positioned ~-1 ~ ~ run function ex3:lobby/menu/parts/stage/main
#ゲームモード
execute positioned ~-2 ~ ~ run function ex3:lobby/menu/parts/gamemode/main

#チーム
execute positioned ~-3 ~ ~ run function ex3:lobby/menu/parts/team/main
#タイムオーバー
execute positioned ~-4 ~ ~ run function ex3:lobby/menu/parts/timeover/main
#setblock 996 74 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1"}}',Text2:'{"text":"制限時間","bold":true,"color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/time_limit/time_option"}}',Text3:'{"text":"右クリック","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/time_limit/time_option"}}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"scoreboard players set #menu_open_pos value 9"}}"}
