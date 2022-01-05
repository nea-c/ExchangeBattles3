#ランダムトグル
scoreboard players add #gamemode_random_pve_boss_neac value 1
execute if score #gamemode_random_pve_boss_neac value matches 2.. run scoreboard players set #gamemode_random_pve_boss_neac value 0
playsound minecraft:block.lever.click master @a
scoreboard players set #playsound_invalid value 1
execute positioned ~1 ~ ~ run function ex3:lobby/menu/parts/gamemode/pve/boss/neac/open