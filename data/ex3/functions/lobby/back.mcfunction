#ゲームが終了してからロビーに戻るときに実行する処理
#tpは別ヶ所でも使用するためこのような処理にしてます
gamemode adventure @a

function ex3:generate_structure/air
function ex3:generate_structure/lobby

#ロビーTP
execute as @a run function ex3:lobby/tp

function ex3:lobby/sandbag_summon

#プレイヤー及び試合情報のリセット
scoreboard players reset #emerald
scoreboard players reset #purpur
scoreboard players reset #compare
scoreboard players reset #bossbar
scoreboard players reset #emerald_win
scoreboard players reset #purpur_win
scoreboard players reset #battleroyal_win
scoreboard players reset #pve_player_win
scoreboard players reset #draw
scoreboard players reset #time
scoreboard players reset #timer
scoreboard players reset #minute
scoreboard players reset #second
scoreboard players reset #milli_second
scoreboard players reset #moth
scoreboard players reset #alarm
scoreboard players reset #gamemode
scoreboard players reset #stage
#scoreboard players reset #menu_cant_enter
#scoreboard players set #playing value 0

scoreboard objectives remove total_taken
scoreboard objectives add total_taken dummy

#切り替え可能==
scoreboard players set #exchange value 0
scoreboard players reset #team_armor
#tag @a add page_setup
tag @a add gui_change
tag @a add skill_no_drop
#==
scoreboard players reset @a playing
scoreboard players set @a drop 1
scoreboard players reset @e[type=player] game_number
tag @a remove win
clear @a #ex3:all{operator_book:1}
effect clear @a
#effect give @a minecraft:health_boost 1000000 4 true
effect give @a minecraft:instant_health 1 4 true

execute if entity @a[team=wait,limit=1] run team join random @a[team=wait]
execute if entity @a[team=wait,limit=1] unless score #2team_random_toggle value matches 10.. run scoreboard players add #2team_random_toggle value 10
execute if entity @a[team=wait,limit=1] run function ex3:game/team_random/2team

#体力修正
execute as @a run function ex3:general/health_proc/max-set
execute as @a run function ex3:general/health_proc/full-recovery
execute as @a if score @s keep_team matches 1 run team join emerald @s
execute as @a if score @s keep_team matches 2 run team join purpur @s
execute as @a if score @s keep_team matches 1.. run scoreboard players reset @s keep_team
