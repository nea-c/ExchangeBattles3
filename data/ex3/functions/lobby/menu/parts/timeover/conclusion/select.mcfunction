#決定
playsound minecraft:entity.player.levelup master @a ~ ~ ~
particle minecraft:end_rod ~ ~ ~0.3 0 0 0 0.05 20 force
tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"タイムオーバー","color":"green"},{"text":"を"},{"text":"コンクルージョン","color":"light_purple"},{"text":"に設定しました"}]
scoreboard players set #setting_timeover value 2
execute positioned 0 102 12 run function ex3:lobby/menu/opened