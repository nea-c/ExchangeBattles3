#時間切れ時のDRAW検知
scoreboard players set #timeover_draw value 0
execute if score #gamemode value matches 1201 unless score #emerald value matches 1 run scoreboard players set #timeover_draw value 1
execute if score #gamemode value matches 1101..1199 if score #emerald value = #purpur value run scoreboard players set #timeover_draw value 1

#execute if score #timeover_draw value matches 1 if score #setting_timeover value matches 3 run function ex3:game/
execute if score #gamemode value matches 2101..2199 run function ex3:game/end/judge

execute if score #gamemode value matches 1101..1299 unless score #timeover_draw value matches 1 run function ex3:game/end/judge
execute if score #gamemode value matches 1101..1299 if score #timeover_draw value matches 1 if score #setting_timeover value matches 2 run function ex3:game/gamemode/pvp/conclusion/check
execute if score #gamemode value matches 1101..1299 if score #timeover_draw value matches 1 if score #setting_timeover value matches 1 run function ex3:game/end/judge

scoreboard players reset #timeover_draw