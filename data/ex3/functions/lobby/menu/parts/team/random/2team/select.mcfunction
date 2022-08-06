#決定
playsound minecraft:entity.player.levelup master @a ~ ~ ~
particle minecraft:end_rod ~ ~ ~0.3 0 0 0 0.05 20 force


execute unless score #team_random-all_player value matches 1 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"チーム","color":"green"},{"text":"を"},{"text":"2チーム","color":"light_purple"},{"text":"に振り分けました(観戦者以外)"}]

execute if score #team_random-all_player value matches 1 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"チーム","color":"green"},{"text":"を"},{"text":"2チーム","color":"light_purple"},{"text":"に振り分けました(全員)"}]
execute if score #team_random-all_player value matches 1 run team join random @a
execute if score #team_random-all_player value matches 1 run scoreboard players reset #team_random-all_player

function ex3:game/team/random/2team

scoreboard players set #playsound_invalid value 1
execute positioned 8 ~1 ~ run function ex3:lobby/menu/parts/team/open