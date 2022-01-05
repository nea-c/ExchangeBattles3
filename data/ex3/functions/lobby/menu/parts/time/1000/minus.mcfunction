#時刻
scoreboard players remove #setting_time_change value 1000
execute if score #setting_time_change value matches ..-1 run scoreboard players add #setting_time_change value 24000

playsound minecraft:block.lever.click master @a

scoreboard players set #playsound_invalid value 1
execute positioned 8 ~1 ~ run function ex3:lobby/menu/parts/time/open