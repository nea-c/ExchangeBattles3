#ゲーム開始処理をスタートさせる


execute if score #game_auto_start_timer value matches 1.. run scoreboard players remove #game_auto_start_timer value 5
scoreboard players operation #minute value = #game_auto_start_timer value
scoreboard players add #minute value 100
scoreboard players operation #second value = #minute value
scoreboard players operation #minute value /= #6000 value
scoreboard players operation #second value %= #6000 value
scoreboard players operation #second value /= #100 value


execute if score #second value matches 0..9 run bossbar set ex3:auto_start name ["",{"text":"ゲーム開始まで","bold":true,"color":"white"},{"text":" "},{"text":"<","bold":true},{"text":" "},{"score":{"name":"#minute","objective":"value"},"bold":true,"color":"white"},{"text":":0","bold":true,"color":"white"},{"score":{"name":"#second","objective":"value"},"bold":true,"color":"white"},{"text":" "},{"text":">","bold":true},{"text":" "}]
execute if score #second value matches 10.. run bossbar set ex3:auto_start name ["",{"text":"ゲーム開始まで","bold":true,"color":"white"},{"text":" "},{"text":"<","bold":true},{"text":" "},{"score":{"name":"#minute","objective":"value"},"bold":true,"color":"white"},{"text":":","bold":true,"color":"white"},{"score":{"name":"#second","objective":"value"},"bold":true,"color":"white"},{"text":" "},{"text":">","bold":true},{"text":" "}]



execute if score #game_auto_start_timer value matches 6000 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" ゲーム開始まで残り 1分 です"}]
execute if score #game_auto_start_timer value matches 6000 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~-150 ~ 0 1 1
execute if score #game_auto_start_timer value matches 3000 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" ゲーム開始まで残り 30秒 です"}]
execute if score #game_auto_start_timer value matches 3000 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~-150 ~ 0 1 1
execute if score #game_auto_start_timer value matches 1000 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" ゲーム開始まで残り 10秒 です"}]
execute if score #game_auto_start_timer value matches 1000 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~-150 ~ 0 1 1
execute if score #game_auto_start_timer value matches 500 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" 5"}]
execute if score #game_auto_start_timer value matches 500 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~-150 ~ 0 1 1
execute if score #game_auto_start_timer value matches 400 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" 4"}]
execute if score #game_auto_start_timer value matches 400 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~-150 ~ 0 1 1
execute if score #game_auto_start_timer value matches 300 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" 3"}]
execute if score #game_auto_start_timer value matches 300 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~-150 ~ 0 1 1
execute if score #game_auto_start_timer value matches 200 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" 2"}]
execute if score #game_auto_start_timer value matches 200 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~-150 ~ 0 1 1
execute if score #game_auto_start_timer value matches 100 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" 1"}]
execute if score #game_auto_start_timer value matches 100 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~-150 ~ 0 1 1

execute store result bossbar ex3:auto_start value run scoreboard players get #game_auto_start_timer value



execute if score #game_auto_start_timer value matches ..0 run bossbar remove ex3:auto_start
execute if score #game_auto_start_timer value matches ..0 run function ex3:game/start/check
execute if score #game_auto_start_timer value matches ..0 run scoreboard players reset #game_auto_start_timer