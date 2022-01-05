#それぞれの設定を決定したときのparticle、playsound一括処理
playsound minecraft:entity.player.levelup master @a ~ ~ ~
particle minecraft:end_rod ~ ~ ~0.3 0 0 0 0.05 20 force

scoreboard players operation #game_auto_start_time value = #game_auto_start_time_dummy value
execute unless score #game_auto_start_time_dummy value matches 0 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"自動開始","color":"aqua"},{"text":"の"},{"text":"時間","color":"green"},{"text":"を"},{"score":{"name":"#game_auto_start_time_dummy","objective":"value"},"color":"light_purple"},{"text":"秒","color":"light_purple"},{"text":"に設定しました"}]

scoreboard players set #playsound_invalid value 1

execute positioned 8 ~1 ~ run function ex3:lobby/menu/parts/game_start/open

#一時保持用スコア削除
scoreboard players reset #game_auto_start_time_dummy

