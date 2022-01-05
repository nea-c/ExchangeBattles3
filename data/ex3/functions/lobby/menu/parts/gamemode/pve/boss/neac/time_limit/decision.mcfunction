#それぞれの設定を決定したときのparticle、playsound一括処理
playsound minecraft:entity.player.levelup master @a ~ ~ ~
particle minecraft:end_rod ~ ~ ~0.3 0 0 0 0.05 20 force

scoreboard players operation #gamemode_pve_boss_neac_time value = #setting_gamemode_minute_dummy value
tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"ボスバトル / NeAc","color":"aqua"},{"text":"の"},{"text":"制限時間","color":"green"},{"text":"を"},{"score":{"name":"#setting_gamemode_minute_dummy","objective":"value"},"color":"light_purple"},{"text":"分","color":"light_purple"},{"text":"に設定しました"}]

scoreboard players set #playsound_invalid value 1

execute positioned ~2 ~ ~ run function ex3:lobby/menu/parts/gamemode/pve/boss/neac/open

#一時保持用スコア削除
scoreboard players reset #setting_gamemode_minute_dummy

