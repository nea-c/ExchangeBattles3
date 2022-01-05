#チーム看板設置トグル
playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2
#particle minecraft:end_rod ~ ~ ~0.3 0 0 0 0.05 20 force

scoreboard players set #playsound_invalid value 1

scoreboard players add #team_auto_change value 1
execute if score #team_auto_change value matches 3.. run scoreboard players set #team_auto_change value 0
execute if score #team_auto_change value matches 0 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"チームの自動変更","color":"green"},{"text":"を"},{"text":"オフ","color":"light_purple"},{"text":"に変更しました"}]

execute if score #team_auto_change value matches 1 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"チームの自動変更","color":"green"},{"text":"を"},{"text":"ゲーム開始時","color":"light_purple"},{"text":"に変更しました"}]

execute if score #team_auto_change value matches 2 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"チームの自動変更","color":"green"},{"text":"を"},{"text":"ゲーム終了時","color":"light_purple"},{"text":"に変更しました"}]


execute positioned 8 ~1 ~ run function ex3:lobby/menu/parts/team/open