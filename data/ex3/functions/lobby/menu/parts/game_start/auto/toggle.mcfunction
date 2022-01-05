#自動ゲームスタートトグル
scoreboard players add #game_auto_start value 1
execute if score #game_auto_start value matches 2.. run scoreboard players set #game_auto_start value 0
playsound minecraft:block.lever.click master @a
scoreboard players set #playsound_invalid value 1
execute positioned 8 ~1 ~ run function ex3:lobby/menu/parts/game_start/open