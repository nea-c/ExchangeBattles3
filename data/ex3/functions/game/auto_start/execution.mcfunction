#ゲーム開始処理をスタートさせる
scoreboard players set #game_auto_start_timer value 100
scoreboard players operation #game_auto_start_timer value *= #game_auto_start_time value

bossbar add ex3:auto_start {"text":""}
bossbar set ex3:auto_start visible false
bossbar set ex3:auto_start style notched_10
bossbar set ex3:auto_start color blue
bossbar set ex3:auto_start players @a


execute store result bossbar ex3:auto_start value run scoreboard players get #game_auto_start_timer value
execute store result bossbar ex3:auto_start max run scoreboard players get #game_auto_start_timer value

bossbar set ex3:auto_start visible true


 
execute if score #auto_start_chat_lobby value matches 1 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" ゲーム開始までのカウントダウンを開始しました"}]
execute if score #auto_start_chat_lobby value matches 1 if score #game_auto_start_timer value matches 6000 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" ゲーム開始まで残り 1分 です"}]
execute if score #auto_start_chat_lobby value matches 1 if score #game_auto_start_timer value matches 6000 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~-150 ~ 0 1 1
execute if score #auto_start_chat_lobby value matches 1 if score #game_auto_start_timer value matches 3000 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" ゲーム開始まで残り 30秒 です"}]
execute if score #auto_start_chat_lobby value matches 1 if score #game_auto_start_timer value matches 3000 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~-150 ~ 0 1 1
execute if score #auto_start_chat_lobby value matches 1 run scoreboard players reset #auto_start_chat_lobby
