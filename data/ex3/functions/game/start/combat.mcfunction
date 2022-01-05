#戦闘開始

scoreboard players reset #countdown
scoreboard players set #playing value 3
scoreboard players set @a playing 3
execute as @a run function ex3:items/auxiliary/arrow/reload/complete

execute if score #gamemode value matches 2101..2199 if score #time value matches ..6000 run data modify storage ex3:game bossbar.point set value '[{"text":" "},{"text":"?/?","bold":true,"color":"aqua"}]'
execute if score #gamemode value matches 1201..1299 if score #time value matches ..6000 run data modify storage ex3:game bossbar.point set value '[{"text":" "},{"text":"?/?","bold":true,"color":"yellow"}]'
execute if score #gamemode value matches 1101..1199 if score #time value matches ..6000 run data modify storage ex3:game bossbar.point set value '[{"text":" "},{"text":"?","bold":true,"color":"green"},{"text":"-","color":"white","bold":true},{"text":"?","bold":true,"color":"light_purple"}]'

title @a times 0 40 5
execute run title @a title ["",{"text":"START","bold":true,"color":"blue"}]
title @a subtitle ["",{"text":"","bold":true}]
scoreboard players reset #display_game_title
execute if score #gamemode value matches 1101..1299 as @a at @s run playsound minecraft:entity.ender_dragon.ambient master @s ~ ~-500 ~ 0 1 1

#execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~-500 ~ 0 2 1



execute if score #gamemode value matches 2101 run function ex3:game/map/boss/neac
execute if score #gamemode value matches 2101..2199 run gamemode adventure @a[team=pve,scores={max_health=0..}]

execute if score #gamemode value matches 1201 run gamemode adventure @a[team=ffa,scores={max_health=0..}]

execute if score #gamemode value matches 1103 run function ex3:game/gamemode/pvp/2team/protect/select-king

execute if score #gamemode value matches 1101..1199 run function ex3:game/map/box/remove
#タイマー開始
scoreboard players set #timer value 1


