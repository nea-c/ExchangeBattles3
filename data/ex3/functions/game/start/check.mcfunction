#ゲーム開始処理をスタートさせるかチェック
scoreboard players set #game_start_checker value 1

#タイマー
#ベース6000×valueスコア
scoreboard players set #time value 6000


#ゲームモードが0(ランダムだった時にゲームモードを選択する)
execute unless score #setting_gamemode value matches 0 run scoreboard players operation #gamemode value = #setting_gamemode value
execute if score #setting_gamemode value matches 0 run function ex3:game/gamemode/select


#ゲームモード毎の制限時間呼び出し
function ex3:game/time_limit_set


#PvE毎の難易度呼び出し
execute if score #gamemode value matches 2101 run scoreboard players operation #difficulty value = #gamemode_pve_boss_neac_difficulty value



#エクストレージのみの時に保存していないプレイヤーがいたら中断
execute if score #setting_exchange value matches 3 as @a[scores={exst3_weapon=1..}] run tag @s add exst3
execute if score #setting_exchange value matches 3 as @a[scores={exst2_weapon=1..}] run tag @s add exst2
execute if score #setting_exchange value matches 3 as @a[scores={exst1_weapon=1..}] run tag @s add exst1
execute if score #setting_exchange value matches 3 as @a[tag=!exst1,tag=!exst2,tag=!exst3,team=!,team=!wait] run tag @s add break
execute if score #setting_exchange value matches 3 if entity @a[tag=break,limit=1] run scoreboard players reset #game_start_checker
execute if score #setting_exchange value matches 3 if entity @a[tag=break,limit=1] run tellraw @a ["",{"text":"------------------------------","color":"#ee0000"},{"text":"\n[システム] エクストレージを設定していないプレイヤーが存在します","color":"white"},{"text":"\n[システム] 一つ以上設定してから開始してください","color":"white"},{"text":"\n[システム] 対象プレイヤーは以下の通りです","color":"white"},{"text":"\n"},{"selector":"@a[tag=break]"},{"text":"\n------------------------------","color":"#ee0000"}]


execute if score #setting_exchange value matches 3 as @a[tag=exst3] run tag @s remove exst3
execute if score #setting_exchange value matches 3 as @a[tag=exst2] run tag @s remove exst2
execute if score #setting_exchange value matches 3 as @a[tag=exst1] run tag @s remove exst1
execute if score #setting_exchange value matches 3 as @a[tag=break] run tag @s remove break


scoreboard players operation #time value *= #timer_moth value
scoreboard players operation #minute value = #time value
scoreboard players operation #second value = #minute value
#scoreboard players add #second value 100
scoreboard players operation #minute value /= #6000 value
#scoreboard players add #minute value 1
scoreboard players operation #second value %= #6000 value
scoreboard players operation #second value /= #100 value



#ステージが0(ランダムだった時にステージを選択する)
scoreboard players operation #stage value = #setting_stage value
execute if score #setting_stage value matches 0 run function ex3:game/map/select



#サーバー設定での難易度がノーマルでなかった時用の対処処理
difficulty normal

#タグが付いてたら削除
tag @a remove win


execute if score #game_start_checker value matches 1 unless score #game_start_checker2 value matches 1 run function ex3:game/start/execution
execute unless score #game_start_checker value matches 1 unless score #game_start_checker2 value matches 1 run function ex3:game/score_reset
execute unless score #game_start_checker value matches 1 unless score #game_start_checker2 value matches 1 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0


execute if score #game_start_checker value matches 1 if score #game_start_checker2 value matches 1 run function ex3:game/auto_start/execution
execute if score #game_start_checker value matches 1 if score #game_start_checker2 value matches 1 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"ゲーム開始までのカウントダウンを開始しました"}]
execute if score #game_start_checker value matches 1 if score #game_start_checker2 value matches 1 run function ex3:game/score_reset

scoreboard players reset #game_start_checker
scoreboard players reset #game_start_checker2