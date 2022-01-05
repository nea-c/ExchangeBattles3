#自動開始キャンセル
tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"自動開始を中断しました"}]
scoreboard players reset #game_auto_start_timer value
bossbar remove ex3:auto_start

