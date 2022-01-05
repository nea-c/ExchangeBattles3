#タイマー処理
#ベース6000を60秒とするため、毎Tick5ずつ減算しています(20Tickで一秒なので20*5=100)
#タイマーのベース値の変更を行う際は減算の処理も書き直してください

scoreboard players remove #time value 5
scoreboard players operation #minute value = #time value
scoreboard players add #minute value 100
scoreboard players operation #second value = #minute value
scoreboard players operation #minute value /= #6000 value
scoreboard players operation #second value %= #6000 value
scoreboard players operation #second value /= #100 value

execute if score #second value matches 0..9 run data modify storage ex3:game bossbar.time set value '[{"text":" "},{"text":"<","bold":true},{"text":" "},{"score":{"name":"#minute","objective":"value"},"bold":true,"color":"white"},{"text":":0","bold":true,"color":"white"},{"score":{"name":"#second","objective":"value"},"bold":true,"color":"white"},{"text":" "},{"text":">","bold":true}]'
execute if score #second value matches 10.. run data modify storage ex3:game bossbar.time set value '[{"text":" "},{"text":"<","bold":true},{"text":" "},{"score":{"name":"#minute","objective":"value"},"bold":true,"color":"white"},{"text":":","bold":true,"color":"white"},{"score":{"name":"#second","objective":"value"},"bold":true,"color":"white"},{"text":" "},{"text":">","bold":true}]'

execute store result bossbar ex3:game value run scoreboard players get #time value

execute if score #time value matches 90000 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" 残り 15分 です"}]
execute if score #time value matches 60000 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" 残り 10分 です"}]
execute if score #time value matches 30000 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" 残り 5分 です"}]
execute if score #time value matches 6000 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" 残り 1分 です"}]
execute if score #time value matches 3000 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" 残り 30秒 です"}]
execute if score #time value matches 1000 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" 残り 10秒 です"}]
execute if score #time value matches 500 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" 5"}]
execute if score #time value matches 500 as @a at @s run playsound minecraft:block.iron_door.close master @s ~ ~ ~ 1 1.7
execute if score #time value matches 400 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" 4"}]
execute if score #time value matches 400 as @a at @s run playsound minecraft:block.iron_door.close master @s ~ ~ ~ 1 1.7
execute if score #time value matches 300 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" 3"}]
execute if score #time value matches 300 as @a at @s run playsound minecraft:block.iron_door.close master @s ~ ~ ~ 1 1.7
execute if score #time value matches 200 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" 2"}]
execute if score #time value matches 200 as @a at @s run playsound minecraft:block.iron_door.close master @s ~ ~ ~ 1 1.7
execute if score #time value matches 100 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" 1"}]
execute if score #time value matches 100 as @a at @s run playsound minecraft:block.iron_door.close master @s ~ ~ ~ 1 1.7



execute if score #time value matches 6000 if score #gamemode value matches 1101..1199 run data modify storage ex3:game bossbar.point set value '[{"text":" "},{"text":"?","bold":true,"color":"green"},{"text":"-","color":"white","bold":true},{"text":"?","bold":true,"color":"light_purple"}]'
execute if score #time value matches 6000 if score #gamemode value matches 1201..1299 run data modify storage ex3:game bossbar.point set value '[{"text":" "},{"text":"?","bold":true,"color":"yellow"},{"text":"/","color":"yellow","bold":true},{"score":{"name":"#compare","objective":"value"},"bold":true,"color":"yellow"}]'


execute if score #time value matches ..0 run function ex3:game/end/timeover
