#ゲーム開始処理 - ステージ読み込み、TPとルールチャット表示

scoreboard players reset #ellipses
scoreboard players reset #ellipses-times

execute as @e[type=!player,tag=!fixed] at @s run tp @s ~ ~-512 ~
execute as @e[type=!player,tag=!fixed] run kill @s

#スキル等強制終了処理
execute as @e[scores={number=0..},type=!player,tag=fixed,tag=death-owner-end] run tag @s add end--

execute as @a run scoreboard players operation @s keep_team = @s team_number
execute if score #gamemode value matches 1101..1199 if score #team_auto_change value matches 1 run function ex3:game/team_random/2team
execute if score #gamemode value matches 1201..1299 run team join ffa @a[team=!,team=!wait]
execute if score #gamemode value matches 1301..1399 run function ex3:game/team_random/trio
execute if score #gamemode value matches 2101 run team join pve @a[team=!,team=!wait]
scoreboard players reset #alarm
scoreboard players reset #menu_cant_enter
gamemode spectator @a
scoreboard players reset #no_team_change
tag @a remove skill6-resist
execute as @a run function ex3:game/map/tp
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~-500 ~ 100000 0
execute as @a at @s run effect clear @s
scoreboard players reset @a max_health
execute if score #gamemode value matches 1201..1299 store result score #compare value if entity @a[team=ffa]
execute if score #gamemode value matches 2101..2199 store result score #compare value if entity @a[team=pve]
execute as @a[team=!,team=!wait] run tag @s add search
execute as @e[type=minecraft:player,team=!,team=!wait,tag=search] run tag @s remove search
execute if entity @a[tag=search] run tellraw @a ["",{"text":"------------------------------","color":"#ee0000"},{"selector":"@a[tag=search]","color":"white"},{"text":" への処理に異常を検知しました","color":"white"},{"text":"速やかにリログを行ってください","color":"white"},{"text":"\n------------------------------","color":"#ee0000"}]
execute as @a[tag=search] run tag @s remove search
function ex3:game/gamemode/play_now

schedule function ex3:game/start/readying_of_start 10s append