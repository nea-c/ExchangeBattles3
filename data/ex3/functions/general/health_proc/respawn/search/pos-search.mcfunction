tag @e[tag=this,tag=respawn-search-more] remove respawn-search-more
tag @e[tag=this,tag=respawn-search-more2] remove respawn-search-more2
scoreboard players add @e[tag=this] value 1
execute as @e[tag=this] at @s unless block ~ ~ ~ #ex3:like_air run tag @s add respawn-search-more2
execute as @e[tag=this] at @s unless block ~ ~1 ~ #ex3:like_air run tag @s add respawn-search-more2
execute as @e[tag=this] at @s unless block ~ ~-1 ~ #ex3:like_air run tag @s add respawn-search-more2
execute as @e[tag=this] at @s if block ~ ~-1 ~ #ex3:like_air if block ~ ~-2 ~ #ex3:like_air run tag @s add respawn-search-more2
execute as @e[tag=this,tag=respawn-search-more2] at @s run tp @s ~ ~1 ~
execute as @e[tag=this,tag=respawn-search-more2] if score @s value matches 70 at @s run tp @s ~ ~-140 ~
execute if entity @e[tag=this,tag=respawn-search-more2,limit=1] at @e[tag=this,limit=1] if score #playing value matches 3 if score #stage value matches 1 if predicate ex3:no-trespassing/subway run kill @e[tag=this]
execute if entity @e[tag=this,tag=respawn-search-more2,limit=1] if score @e[tag=this,limit=1] value matches ..140 run function ex3:general/health_proc/respawn/search/pos-search
execute if entity @e[tag=this,tag=respawn-search-more2,limit=1] unless score @e[tag=this,limit=1] value matches ..140 run kill @e[tag=this]