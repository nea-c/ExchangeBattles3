#チーム看板設置トグル
playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2
#particle minecraft:end_rod ~ ~ ~0.3 0 0 0 0.05 20 force

scoreboard players set #playsound_invalid value 1

scoreboard players add #team_change value 1
execute if score #team_change value matches 2.. run scoreboard players set #team_change value 0
execute if score #team_change value matches 0 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"チームの任意変更","color":"green"},{"text":"を"},{"text":"禁止","color":"light_purple"},{"text":"しました"}]
execute if score #team_change value matches 0 positioned 0 123 0 run function ex3:lobby/menu/parts/team/change/disable
execute if score #team_change value matches 1 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"チームの任意変更","color":"green"},{"text":"を"},{"text":"許可","color":"light_purple"},{"text":"しました"}]
execute if score #team_change value matches 1 positioned 0 123 0 run function ex3:lobby/menu/parts/team/change/enable


execute positioned 8 ~1 ~ run function ex3:lobby/menu/parts/team/open