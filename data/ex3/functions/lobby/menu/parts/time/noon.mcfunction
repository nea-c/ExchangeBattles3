#時刻
scoreboard players set #setting_time_change value 6000

playsound minecraft:block.lever.click master @a

scoreboard players set #playsound_invalid value 1
execute positioned 8 ~1 ~ run function ex3:lobby/menu/parts/time/open