#それぞれの設定を決定したときのparticle、playsound一括処理
playsound minecraft:entity.player.levelup master @a ~ ~ ~
particle minecraft:end_rod ~ ~ ~0.3 0 0 0 0.05 20 force

scoreboard players operation #setting_time value = #setting_time_change value
#朝
execute if score #setting_time_change value matches 1000 run scoreboard players set #setting_time_template value 1
execute if score #setting_time_change value matches 1000 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"時刻","color":"green"},{"text":"を"},{"score":{"name":"#setting_time_change","objective":"value"},"color":"light_purple"},{"text":"(朝)","color":"light_purple"},{"text":"に設定しました"}]
#昼
execute if score #setting_time_change value matches 6000 run scoreboard players set #setting_time_template value 1
execute if score #setting_time_change value matches 6000 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"時刻","color":"green"},{"text":"を"},{"score":{"name":"#setting_time_change","objective":"value"},"color":"light_purple"},{"text":"(昼)","color":"light_purple"},{"text":"に設定しました"}]
#夕
execute if score #setting_time_change value matches 13000 run scoreboard players set #setting_time_template value 1
execute if score #setting_time_change value matches 13000 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"時刻","color":"green"},{"text":"を"},{"score":{"name":"#setting_time_change","objective":"value"},"color":"light_purple"},{"text":"(夕)","color":"light_purple"},{"text":"に設定しました"}]
#夜
execute if score #setting_time_change value matches 18000 run scoreboard players set #setting_time_template value 1
execute if score #setting_time_change value matches 18000 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"時刻","color":"green"},{"text":"を"},{"score":{"name":"#setting_time_change","objective":"value"},"color":"light_purple"},{"text":"(夜)","color":"light_purple"},{"text":"に設定しました"}]
#その他
execute unless score #setting_time_template value matches 1 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"時刻","color":"green"},{"text":"を"},{"score":{"name":"#setting_time_change","objective":"value"},"color":"light_purple"},{"text":"に設定しました"}]
scoreboard players reset #setting_time_template

time set 0
execute if score #setting_time_change value matches 16384.. run time add 16384
execute if score #setting_time_change value matches 16384.. run scoreboard players remove #setting_time_change value 16384
execute if score #setting_time_change value matches 8192.. run time add 8192
execute if score #setting_time_change value matches 8192.. run scoreboard players remove #setting_time_change value 8192
execute if score #setting_time_change value matches 4096.. run time add 4096
execute if score #setting_time_change value matches 4096.. run scoreboard players remove #setting_time_change value 4096
execute if score #setting_time_change value matches 2048.. run time add 2048
execute if score #setting_time_change value matches 2048.. run scoreboard players remove #setting_time_change value 2048
execute if score #setting_time_change value matches 1024.. run time add 1024
execute if score #setting_time_change value matches 1024.. run scoreboard players remove #setting_time_change value 1024
execute if score #setting_time_change value matches 512.. run time add 512
execute if score #setting_time_change value matches 512.. run scoreboard players remove #setting_time_change value 512
execute if score #setting_time_change value matches 256.. run time add 256
execute if score #setting_time_change value matches 256.. run scoreboard players remove #setting_time_change value 256
execute if score #setting_time_change value matches 128.. run time add 128
execute if score #setting_time_change value matches 128.. run scoreboard players remove #setting_time_change value 128
execute if score #setting_time_change value matches 64.. run time add 64
execute if score #setting_time_change value matches 64.. run scoreboard players remove #setting_time_change value 64
execute if score #setting_time_change value matches 32.. run time add 32
execute if score #setting_time_change value matches 32.. run scoreboard players remove #setting_time_change value 32
execute if score #setting_time_change value matches 16.. run time add 16
execute if score #setting_time_change value matches 16.. run scoreboard players remove #setting_time_change value 16
execute if score #setting_time_change value matches 8.. run time add 8
execute if score #setting_time_change value matches 8.. run scoreboard players remove #setting_time_change value 8
execute if score #setting_time_change value matches 4.. run time add 4
execute if score #setting_time_change value matches 4.. run scoreboard players remove #setting_time_change value 4
execute if score #setting_time_change value matches 2.. run time add 2
execute if score #setting_time_change value matches 2.. run scoreboard players remove #setting_time_change value 2
execute if score #setting_time_change value matches 1.. run time add 1
execute if score #setting_time_change value matches 1.. run scoreboard players remove #setting_time_change value 1


execute positioned 0 102 12 run function ex3:lobby/menu/opened
