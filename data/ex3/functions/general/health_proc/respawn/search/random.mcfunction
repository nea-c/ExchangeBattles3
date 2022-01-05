tag @e[tag=this,tag=respawn-search-more] remove respawn-search-more
execute positioned as @e[tag=border] run spreadplayers ~ ~ 0 12 false @e[tag=this]
execute store result entity @e[tag=this,limit=1] Pos[1] double 0.1 run scoreboard players get @s respawn-y
execute as @e[tag=this] at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute as @e[tag=this] at @s unless block ~ ~ ~ #ex3:like_air run tag @s add respawn-search-more
execute as @e[tag=this] at @s unless block ~ ~1 ~ #ex3:like_air run tag @s add respawn-search-more
execute as @e[tag=this] at @s unless block ~ ~-1 ~ #ex3:like_air run tag @s add respawn-search-more
execute as @e[tag=this] at @s if block ~ ~-1 ~ #ex3:like_air if block ~ ~-1 ~ #ex3:like_air run tag @s add respawn-search-more
execute if entity @e[tag=this,tag=respawn-search-more,limit=1] positioned ~ ~ ~ run function ex3:general/health_proc/respawn/search/pos-search