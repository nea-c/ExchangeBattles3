
#試合中でない時のその他ロビー処理
execute if score #playing value matches 0 unless score #menu_cant_enter value matches 1 run function ex3:lobby/menu/room_enter_and_leave
execute if score #playing value matches 0 if score #menu_open value matches 1 positioned 0 102 12 run function ex3:lobby/menu/open_animation
execute if score #playing value matches 0 if score #menu_close value matches 1 positioned 0 102 12 run function ex3:lobby/menu/close_animation
execute if score #playing value matches 0 if score #game_auto_start_timer value matches 1.. run function ex3:game/auto_start/timer


#リログ処理：A＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
#試合中でない時
execute if score #playing value matches 0 if entity @a[scores={logout=1..},limit=1] as @a[scores={logout=1..}] run function ex3:general/player_join/playing_false
#試合開始アラーム時
execute if score #playing value matches 1 if entity @a[scores={logout=1..},limit=1] as @a[scores={logout=1..}] run function ex3:general/player_join/alarm
#試合場所TP時＆ロビー帰還時
execute if score #playing value matches 2 if entity @a[scores={logout=1..},limit=1] as @a[scores={logout=1..}] run function ex3:general/player_join/starting_and_ending
#試合準備時＆試合中
execute if score #playing value matches 3 if entity @a[scores={logout=1..},limit=1] as @a[scores={logout=1..}] run function ex3:general/player_join/playing_true
#ここまで：A＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝


#試合中ゲームモード別ゲーム処理
execute if score #playing value matches 3 if score #timer value matches 1 if score #gamemode value matches 1101 run function ex3:game/gamemode/pvp/2team/deathmatch
execute if score #playing value matches 3 if score #timer value matches 1 if score #gamemode value matches 1102 run function ex3:game/gamemode/pvp/2team/slaughter/main
execute if score #playing value matches 3 if score #timer value matches 1 if score #gamemode value matches 1103 run function ex3:game/gamemode/pvp/2team/protect/main
execute if score #playing value matches 3 if score #timer value matches 1 if score #gamemode value matches 1104 run function ex3:game/gamemode/pvp/2team/emit/main
execute if score #playing value matches 3 if score #timer value matches 1 if score #gamemode value matches 1201 run function ex3:game/gamemode/pvp/ffa/battleroyal

execute if score #playing value matches 3 if score #timer value matches 1 if score #gamemode value matches 1101..1199 if score #time value matches 6001.. unless score #conclusion value matches 1 run data modify storage ex3:game bossbar.point set value '[{"text":" "},{"score":{"name":"#emerald","objective":"value"},"bold":true,"color":"green"},{"text":"-","color":"white","bold":true},{"score":{"name":"#purpur","objective":"value"},"bold":true,"color":"light_purple"}]'

execute if score #playing value matches 3 if score #timer value matches 1 if score #gamemode value matches 2101..2199 run function ex3:game/gamemode/pve/boss/repeat

#試合中タイマー処理
execute if score #playing value matches 3 if score #timer value matches 1 if score #time value matches 1.. run function ex3:game/timer

execute if score #playing value matches 3 if score #timer value matches 1 run bossbar set ex3:game name ["",{"nbt":"bossbar.mode","storage": "ex3:game","interpret": true},{"nbt":"bossbar.time","storage": "ex3:game","interpret": true},{"nbt":"bossbar.point","storage": "ex3:game","interpret": true}]

#奈落でロビー位置に戻る
execute if score #playing value matches 0..1 as @a[gamemode=!spectator,gamemode=!creative] positioned as @s if entity @s[y=120,dy=-100] positioned 0 103 4 unless entity @s[distance=..15] run tag @s add start_resistance
execute if score #playing value matches 0..1 as @a[tag=!creative] positioned as @s if entity @s[y=120,dy=-100] positioned 0 103 4 unless entity @s[distance=..15] run function ex3:lobby/tp
#試合中奈落で死ぬ処理
execute if score #playing value matches 2..3 if score #timer value matches 1 as @a positioned as @s if entity @s[y=95,dy=-100] run tp @s ~ 100 ~

execute if score #playing value matches 2..3 if score #timer value matches 1 if entity @e[scores={max_health=0..},limit=1] as @e[scores={max_health=0..}] positioned as @s if entity @s[y=99,dy=-100] run tag @s add into_void
execute if score #playing value matches 2..3 if score #timer value matches 1 if entity @e[scores={max_health=0..},tag=!boss,limit=1] as @e[scores={max_health=0..},tag=!boss] positioned as @s if entity @s[y=99,dy=-100] run scoreboard players set @s damage_resist 50000





