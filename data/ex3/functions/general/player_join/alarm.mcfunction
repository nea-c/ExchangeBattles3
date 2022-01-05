
execute unless score @s game_number = #game_number value run tag @s add mismatch
execute if entity @s[tag=mismatch] run team join wait @s
execute if entity @s[tag=mismatch] run gamemode adventure @s
execute if entity @s[tag=mismatch] run bossbar set ex3:game players @a
execute if entity @s[tag=mismatch] run bossbar set ex3:boss players @a
execute if entity @s[tag=mismatch] run function ex3:lobby/tp
execute if entity @s[tag=mismatch,scores={game_number=..-1}] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1 0
execute if entity @s[tag=mismatch] run scoreboard players reset @s keep_team
execute if entity @s[tag=mismatch] run scoreboard players set @s playing 1

scoreboard players operation @s game_number = #game_number value
scoreboard players reset @s logout


execute if entity @s[tag=mismatch] run tag @s remove mismatch