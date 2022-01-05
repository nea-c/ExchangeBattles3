#それぞれの設定を決定したときのparticle、playsound一括処理
playsound minecraft:entity.player.levelup master @a ~ ~ ~
particle minecraft:end_rod ~ ~ ~0.3 0 0 0 0.05 20 force

scoreboard players operation #gamemode_pve_boss_neac_difficulty value = #setting_difficulty_dummy value
execute if score #setting_difficulty_dummy value matches 1 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"ボスバトル / NeAc","color":"aqua"},{"text":"の"},{"text":"難易度","color":"green"},{"text":"を"},{"text":"Easy","color": "light_purple"},{"text":"に設定しました"}]
execute if score #setting_difficulty_dummy value matches 2 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"ボスバトル / NeAc","color":"aqua"},{"text":"の"},{"text":"難易度","color":"green"},{"text":"を"},{"text":"Normal","color": "light_purple"},{"text":"に設定しました"}]
execute if score #setting_difficulty_dummy value matches 3 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"ボスバトル / NeAc","color":"aqua"},{"text":"の"},{"text":"難易度","color":"green"},{"text":"を"},{"text":"Hard","color": "light_purple"},{"text":"に設定しました"}]
execute if score #setting_difficulty_dummy value matches 4 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"ボスバトル / NeAc","color":"aqua"},{"text":"の"},{"text":"難易度","color":"green"},{"text":"を"},{"text":"Extreme","color": "light_purple"},{"text":"に設定しました"}]



scoreboard players set #playsound_invalid value 1

execute positioned ~3 ~ ~ run function ex3:lobby/menu/parts/gamemode/pve/boss/neac/open

#一時保持用スコア削除
scoreboard players reset #setting_difficulty_dummy

