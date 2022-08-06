#ゲーム開始処理をスタートさせる
scoreboard players set #playing value 1
scoreboard players set #emerald value 0
scoreboard players set #purpur value 0
scoreboard players set #compare value 0
scoreboard players reset #emerald_win
scoreboard players reset #purpur_win
scoreboard players reset #draw

#メニューを閉じる
execute positioned 0 102 12 run function ex3:lobby/menu/closed


execute positioned 0 103 4 if entity @a[distance=..15,limit=1] as @a[distance=..15] run tp @s 0 123 0
scoreboard players set #menu_cant_enter value 1

execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~-500 ~ 0 1 1

#プレイヤーのplayingスコアを1に
scoreboard players set @a playing 1

#チーム変更を不能にする
scoreboard players set #no_team_change value 1

#タイトルコマンドがゲーム用以外表示されないようにする
scoreboard players set #display_game_title value 1

#一部スコア値のリセット
scoreboard players reset @a logout

scoreboard players add #game_number value 1
scoreboard players operation @a game_number = #game_number value




bossbar add ex3:game {"text":""}
bossbar set ex3:game visible false
bossbar set ex3:game style notched_10
bossbar set ex3:game color red
bossbar set ex3:game players @a
execute store result bossbar ex3:game value run scoreboard players get #time value
execute store result bossbar ex3:game max run scoreboard players get #time value

execute if score #gamemode value matches 2101 run data modify storage ex3:game bossbar.mode set value '{"text":"ボスバトル","color":"white","bold":true}'
execute if score #gamemode value matches 1201 run data modify storage ex3:game bossbar.mode set value '{"text":"バトルロイヤル","color":"white","bold":true}'
execute if score #gamemode value matches 1101 run data modify storage ex3:game bossbar.mode set value '{"text":"デスマッチ","color":"white","bold":true}'
execute if score #gamemode value matches 1102 run data modify storage ex3:game bossbar.mode set value '{"text":"スローター","color":"white","bold":true}'
execute if score #gamemode value matches 1103 run data modify storage ex3:game bossbar.mode set value '{"text":"プロテクト","color":"white","bold":true}'
execute if score #gamemode value matches 1104 run data modify storage ex3:game bossbar.mode set value '{"text":"イーミット","color":"white","bold":true}'

data modify storage ex3:game bossbar.time set value '[{"text":" "},{"text":"<","bold":true},{"text":" "},{"score":{"name":"#minute","objective":"value"},"bold":true,"color":"white"},{"text":":00","bold":true,"color":"white"},{"text":" "},{"text":">","bold":true}]'

execute if score #gamemode value matches 2101..2199 run data modify storage ex3:game bossbar.point set value '[{"text":" "},{"text":"0/0","bold":true,"color":"aqua"}]'
execute if score #gamemode value matches 1201..1299 run data modify storage ex3:game bossbar.point set value '[{"text":" "},{"text":"0/0","bold":true,"color":"yellow"}]'
execute if score #gamemode value matches 1101..1199 run data modify storage ex3:game bossbar.point set value '[{"text":" "},{"text":"0","bold":true,"color":"green"},{"text":"-","color":"white","bold":true},{"text":"0","bold":true,"color":"light_purple"}]'

bossbar set ex3:game name ["",{"nbt":"bossbar.mode","storage": "ex3:game","interpret": true},{"nbt":"bossbar.time","storage": "ex3:game","interpret": true},{"nbt":"bossbar.point","storage": "ex3:game","interpret": true}]

bossbar set ex3:game visible true

#サーバー設定での難易度がノーマルでなかった時用の対処処理
difficulty normal

#タグが付いてたら削除
tag @a remove win
tag @a remove slain_by_weapon6


effect give @s luck 10 9 true

execute as @e[type=!player,tag=!fixed] at @s run tp @s ~ ~-512 ~
execute as @e[type=!player,tag=!fixed] run kill @s

#スキル等強制終了処理
execute as @e[scores={number=0..},type=!player,tag=fixed,tag=death-owner-end] run tag @s add end--

title @a times 0 300 20
title @a title [{"text":"Loading","color":"white"}]
function ex3:general/health_proc/full-recovery

scoreboard players set #ellipse value 0
function ex3:game/start/ellipses
function ex3:game/map/load
tp @a 0 100 0
gamemode spectator @a
scoreboard players reset @a max_health
title @a actionbar {"text":""}
scoreboard players set #playing value 2
scoreboard players set @a playing 2

