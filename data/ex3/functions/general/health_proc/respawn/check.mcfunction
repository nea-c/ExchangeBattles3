
scoreboard players reset @s max_health
title @s actionbar {"text":""}

scoreboard players operation #- team_number = @s team_number

execute if score #gamemode value matches 1102 run function ex3:game/gamemode/pvp/2team/slaughter/death
execute if score #gamemode value matches 1103 if entity @s[tag=king] run function ex3:game/gamemode/pvp/2team/protect/death
execute if score #gamemode value matches 1104 if entity @s[tag=emit] run function ex3:game/gamemode/pvp/2team/emit/death

execute if score #gamemode value matches 1102..1104 run tag @s add respawnable-2team

execute if entity @s[tag=respawnable-2team] run function ex3:general/health_proc/respawn/execution/2team


execute if entity @s[tag=respawnable-2team] run tag @s remove respawnable-2team