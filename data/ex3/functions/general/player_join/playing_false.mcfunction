execute if score @s game_number matches 1.. run tag @s add match
execute if score @s game_number matches ..-1 run tag @s add match

execute if entity @s[tag=match] run function ex3:lobby/tp
execute if entity @s[tag=match,scores={game_number=..-1}] at @s run playsound entity.player.levelup master @a ~ ~ ~ 1 0
execute if entity @s[tag=match] run scoreboard players reset @s playing

execute if entity @s[tag=match,scores={keep_team=1..}] run scoreboard players reset @s keep_team

execute if entity @s[tag=match] store result score #emerald_player value if entity @a[team=emerald]
execute if entity @s[tag=match] store result score #purpur_player value if entity @a[team=purpur]
execute if entity @s[tag=match] if score #emerald_player value < #purpur_player value run team join emerald @s
execute if entity @s[tag=match] if score #emerald_player value > #purpur_player value run team join purpur @s
execute if entity @s[tag=match] if score #emerald_player value = #purpur_player value run tag @s add team_random
execute if entity @s[tag=match,tag=team_random] run data merge storage random: {data:{min:1,max:2.999}}
execute if entity @s[tag=match,tag=team_random] store result score #emerald_player value run function ex3:general/random
execute if entity @s[tag=match,tag=team_random] if score #emerald_player value matches 1 run team join emerald @s
execute if entity @s[tag=match,tag=team_random] if score #emerald_player value matches 2 run team join purpur @s
execute if entity @s[tag=match,tag=team_random] run tag @s remove team_random


execute if score #emerald_player value = #emerald_player value run scoreboard players reset #emerald_player
execute if score #purpur_player value = #purpur_player value run scoreboard players reset #purpur_player


execute if entity @s[tag=match] run function ex3:general/health_proc/max-set
execute if entity @s[tag=match] run gamemode adventure @s
execute if entity @s[tag=match] run scoreboard players reset @s game_number



scoreboard players reset @s logout



execute if entity @s[tag=match] run tag @s remove match