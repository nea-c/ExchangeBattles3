#ランダムトグル
scoreboard players add #gamemode_random_pvp_2team_protect value 1
execute if score #gamemode_random_pvp_2team_protect value matches 2.. run scoreboard players set #gamemode_random_pvp_2team_protect value 0
playsound minecraft:block.lever.click master @a
scoreboard players set #playsound_invalid value 1
execute positioned ~1 ~ ~ run function ex3:lobby/menu/parts/gamemode/pvp/2team/protect/open