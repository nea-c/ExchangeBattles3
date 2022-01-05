#ランダムトグル
scoreboard players add #stage_random_involute value 1
execute if score #stage_random_involute value matches 2.. run scoreboard players set #stage_random_involute value 0
playsound minecraft:block.lever.click master @a
scoreboard players set #playsound_invalid value 1
execute positioned ~1 ~ ~ run function ex3:lobby/menu/parts/stage/involute/open