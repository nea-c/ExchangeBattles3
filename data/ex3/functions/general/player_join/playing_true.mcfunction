
execute unless score @s game_number = #game_number value run tag @s add mismatch
execute if score @s game_number = #game_number value run tag @s add match

execute if entity @s[tag=mismatch] run team join wait @s
execute if entity @s[tag=mismatch] run gamemode spectator @s
execute if entity @s[tag=mismatch] run bossbar set ex3:game players @a
execute if entity @s[tag=mismatch] run bossbar set ex3:boss players @a
execute if entity @s[tag=mismatch] as @s run function ex3:game/map/tp
execute if entity @s[tag=mismatch,scores={game_number=..-1}] at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 0
execute if entity @s[tag=mismatch] run scoreboard players reset @s keep_team
execute if entity @s[tag=mismatch] run scoreboard players reset @s max_health
execute if entity @s[tag=mismatch] run title @s actionbar {"text":""}
execute if entity @s[tag=mismatch] run scoreboard players set @s playing 3


execute if entity @s[tag=match,scores={playing=1..2}] run tag @s add set_playing3
execute if entity @s[tag=set_playing3,gamemode=!adventure,team=!,team=!wait] run function ex3:general/health_proc/max-set
execute if entity @s[tag=set_playing3,gamemode=!adventure,team=!,team=!wait] run effect give @s luck 3 9
execute if entity @s[tag=set_playing3,gamemode=!adventure,team=!,team=!wait] run function ex3:game/map/box/tp
execute if entity @s[tag=set_playing3,gamemode=!spectator,team=] run tag @s add this
execute if entity @s[tag=set_playing3,gamemode=!spectator,team=wait] run tag @s add this

execute if entity @s[tag=set_playing3,tag=this] run gamemode spectator @s
execute if entity @s[tag=set_playing3,tag=this] run scoreboard players reset @s max_health
execute if entity @s[tag=set_playing3,tag=this] run title @s actionbar {"text":""}
execute if entity @s[tag=set_playing3,tag=this] run tag @s remove this
execute if entity @s[tag=set_playing3] run scoreboard players set @s playing 3

execute if entity @s[tag=set_playing3] run function ex3:game/map/tp
execute if entity @s[tag=set_playing3] run tag @s remove set_playing3



scoreboard players operation @s game_number = #game_number value
scoreboard players reset @s logout



execute if entity @s[tag=mismatch] run tag @s remove mismatch
execute if entity @s[tag=match] run tag @s remove match