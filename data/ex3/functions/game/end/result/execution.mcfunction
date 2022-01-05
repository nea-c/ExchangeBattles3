#試合での勝者を決める処理モジュールなので記述なし
execute if score #gamemode value matches 1201 if score #emerald value matches 1 as @a if score @s number = #battleroyal_win value run tag @s add win
execute if score #gamemode value matches 1201 if score #emerald value matches 1 as @a unless score @s number = #battleroyal_win value run tag @s add lose
execute if score #gamemode value matches 1201 unless score #emerald value matches 1 run scoreboard players set #draw value 1
execute if score #gamemode value matches 1101..1199 if score #emerald value > #purpur value run scoreboard players set #emerald_win value 1
execute if score #gamemode value matches 1101..1199 if score #emerald value < #purpur value run scoreboard players set #purpur_win value 1
execute if score #gamemode value matches 1101..1199 if score #emerald value = #purpur value run scoreboard players set #draw value 1

execute if score #gamemode value matches 2101..2199 unless score #emerald value matches 1.. run tag @a[team=pve] add lose
execute if score #gamemode value matches 2101..2199 if score #emerald value matches 1.. if score #purpur value matches 1.. run tag @a[team=pve] add lose
execute if score #gamemode value matches 2101..2199 if score #emerald value matches 1.. unless score #purpur value matches 1.. run tag @a[team=pve] add win

title @a times 0 60 20

execute if score #emerald_win value matches 1 as @a[team=emerald] run tag @s add win
execute if score #emerald_win value matches 1 as @a[team=purpur] run tag @s add lose
execute if score #purpur_win value matches 1 as @a[team=emerald] run tag @s add lose
execute if score #purpur_win value matches 1 as @a[team=purpur] run tag @s add win

execute if entity @a[team=wait,limit=1] as @a[team=wait] run tag @s add not_team
execute if entity @a[team=,limit=1] as @a[team=] run tag @s add not_team
execute if entity @a[team=,limit=1] as @a[team=] run tag @s add spectator

execute if score #emerald_win value matches 1 run title @a subtitle [{"text":"Winner: ","color":"white"},{"text":" Emerald Team","color":"green"}]
execute if score #purpur_win value matches 1 run title @a subtitle [{"text":"Winner: ","color":"white"},{"text":"Purpur Team","color":"light_purple"}]
execute if score #battleroyal_win value matches 1.. run title @a subtitle [{"text":"Winner: ","color":"white"},{"selector":"@a[tag=win]","color":"yellow"}]
execute if entity @a[tag=!win,tag=!lose,limit=1] run title @a[tag=!win,tag=!lose] title [{"text":""}]
execute if entity @a[tag=!win,tag=!lose,tag=not_team,limit=1] as @a[tag=!win,tag=!lose,tag=not_team] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 100000 1

execute if entity @a[tag=win,limit=1] run title @a[tag=win] title [{"text":"You win!","underlined":true,"color":"gold"}]
execute if entity @a[tag=win,limit=1] as @a[tag=win] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100000 1
execute if entity @a[tag=lose,limit=1] run title @a[tag=lose] title [{"text":"You lose..","underlined":true,"color":"gray"}]
execute if entity @a[tag=lose,limit=1] as @a[tag=lose] at @s run playsound minecraft:entity.villager.no master @s ~ ~-500 ~ 0 1 1

execute if score #draw value matches 1 run title @a title [{"text":"Draw!","underlined":true,"color":"gray"}]
execute if score #draw value matches 1 as @a at @s run playsound minecraft:entity.villager.no master @s ~ ~-500 ~ 0 1 1

scoreboard objectives add total_point dummy

execute as @a[team=!,team=!wait] run function ex3:game/end/result/point

execute as @a run function ex3:game/end/result/achivements/main
function ex3:game/end/result/achivements/mvp

tellraw @a [{"text":"-","color":"gray"},{"text":" Ranking ","color":"yellow"},{"text":"-","color":"gray"},{"text":" (最大5人) ","color":"dark_gray"},{"text":"--------------","color":"gray"}]
function ex3:game/end/result/ranking/main
tellraw @a [{"text":"","color":"gray"}]
execute if entity @a[scores={total_point=-2147483648..},limit=1] as @a[scores={total_point=-2147483648..}] run function ex3:game/end/result/ranking/own-point
scoreboard players reset #result
scoreboard objectives remove total_point
scoreboard objectives remove total_dealt
scoreboard objectives remove total_taken
scoreboard objectives remove total_death
scoreboard objectives remove total_kill

execute if entity @a[tag=win,limit=1] as @a[tag=win] run tag @s remove win
execute if entity @a[tag=lose,limit=1] as @a[tag=lose] run tag @s remove lose
execute if entity @a[tag=not_team,limit=1] as @a[tag=not_team] run tag @s remove not_team
execute if entity @a[tag=spectator,limit=1] as @a[tag=spectator] run tag @s remove spectator

schedule function ex3:game/end/result/win_firework 1s