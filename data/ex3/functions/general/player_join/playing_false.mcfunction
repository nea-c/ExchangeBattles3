execute if score @s game_number matches 1.. run tag @s add match
execute if score @s game_number matches ..-1 run tag @s add match

execute if entity @s[tag=match] run function ex3:lobby/tp
execute if entity @s[tag=match,scores={game_number=..-1}] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1 0
execute if entity @s[tag=match] run scoreboard players reset @s playing

execute if entity @s[tag=match,scores={keep_team=1..}] run scoreboard players reset @s keep_team


execute if score #emerald_player value = #emerald_player value run scoreboard players reset #emerald_player
execute if score #purpur_player value = #purpur_player value run scoreboard players reset #purpur_player


execute if entity @s[tag=match] run function ex3:general/health_proc/max-set
execute if entity @s[tag=match] run gamemode adventure @s
execute if entity @s[tag=match] run scoreboard players reset @s game_number



scoreboard players reset @s logout



execute if entity @s[tag=match] run tag @s remove match