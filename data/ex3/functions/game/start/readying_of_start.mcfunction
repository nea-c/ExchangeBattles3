#ゲーム開始処理 - 開始準備(囲いやチームTP)
clear @a #ex3:all{operator_book:1}

effect give @a luck 11 9 true
scoreboard players set @a skill1_ct 135
scoreboard players set @a skill2_ct 135
scoreboard players set @a skill3_ct 135
scoreboard players set @a skill1_ct_max 135
scoreboard players set @a skill2_ct_max 135
scoreboard players set @a skill3_ct_max 135
scoreboard players set @a arrow 0
execute as @a run function ex3:items/support/0006/reset
scoreboard objectives remove total_dealt
scoreboard objectives remove total_taken
scoreboard objectives remove total_death
scoreboard objectives remove total_kill
scoreboard objectives add total_dealt dummy
scoreboard objectives add total_taken dummy
scoreboard objectives add total_death dummy
scoreboard objectives add total_kill dummy
scoreboard players set @a total_dealt 0
scoreboard players set @a total_taken 0
scoreboard players set @a total_death 0
scoreboard players set @a total_kill 0
tag @a remove weapon5_charged
tag @a remove weapon5_charged-r
execute as @a if score @s tab matches 50001..50003 run scoreboard players set @a tab 5
execute if score #setting_exchange value matches 1 run scoreboard players set #exchange value 0
execute if score #setting_exchange value matches 2 run scoreboard players set #exchange value 1
execute if score #setting_exchange value matches 3 run scoreboard players set #exchange value 2
execute if score #setting_exchange value matches 4 run scoreboard players set #exchange value 3
scoreboard players operation #team_armor value = #setting_team_armor value
execute if score #setting_exchange value matches 3..4 run scoreboard players set @a tab 5
execute if score #setting_exchange value matches 2..4 run tag @a add gui_change

scoreboard players reset @a regeneration

execute if score #setting_exchange value matches 3 as @a run scoreboard players operation @s value = @s tab
execute if score #setting_exchange value matches 3 run tag @a add start-exstorage
execute if score #setting_exchange value matches 3 as @a run function ex3:items/gui/close/exstorage/load_proc
execute if score #setting_exchange value matches 3 as @a run scoreboard players operation @s tab = @s value
execute if score #setting_exchange value matches 3 run scoreboard players reset @a value

execute if score #gamemode value matches 1201 run gamemode spectator @a
execute if score #gamemode value matches 1201 run scoreboard players set #playing value 2

execute if score #gamemode value matches 1101..1199 run scoreboard players set #playing value 3

execute as @a run scoreboard players operation @s playing = #playing value

scoreboard players set @a drop 1

execute as @a[team=!,team=!wait] run function ex3:general/health_proc/max-set
execute as @a[team=!,team=!wait] run function ex3:general/health_proc/full-recovery

execute if score #gamemode value matches 1101..1199 as @a run function ex3:game/map/box/tp
execute if score #gamemode value matches 1101..1199 run function ex3:game/map/box/set


execute as @a store result score @s respawn-x run data get entity @s Pos[0] 10
execute as @a store result score @s respawn-y run data get entity @s Pos[1] 10
execute as @a store result score @s respawn-z run data get entity @s Pos[2] 10

execute if score #gamemode value matches 1104 run function ex3:game/map/emit_object


schedule function ex3:game/start/ready-title_animation 5t append