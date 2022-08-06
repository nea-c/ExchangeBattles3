gamemode spectator @s
scoreboard players reset @s max_health
title @s actionbar {"text":""}
execute unless score @s game_number = #game_number value run tag @s add mismatch
execute if score @s game_number = #game_number value run tag @s add match
execute if entity @s[tag=mismatch] run function ex3:game/team/wait_trigger
execute if entity @s[tag=mismatch] run bossbar set ex3:game players @a
execute if entity @s[tag=mismatch] run bossbar set ex3:boss players @a
execute if entity @s[tag=mismatch] run function ex3:game/map/tp
execute if entity @s[tag=mismatch,scores={game_number=..-1}] at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 0


execute if entity @s[tag=match,scores={playing=1}] run tag @s add set_playing2
execute if entity @s[tag=match,scores={playing=3}] run tag @s add set_playing2
execute if entity @s[tag=set_playing2] run scoreboard players set @s playing 2

execute if entity @s[tag=set_playing2] run function ex3:game/map/tp
execute if entity @s[tag=set_playing2] run tag @s remove set_playing2


execute if entity @s[tag=mismatch] run scoreboard players reset @s keep_team
execute if entity @s[tag=mismatch] run scoreboard players set @s playing 2

scoreboard players operation @s game_number = #game_number value
scoreboard players reset @s logout



execute if entity @s[tag=mismatch] run tag @s remove mismatch
execute if entity @s[tag=match] run tag @s remove match