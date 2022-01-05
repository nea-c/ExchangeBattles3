tag @e[tag=this,tag=boss-void-comeback-pos-search] remove boss-void-comeback-pos-search
tag @e[tag=this,tag=boss-void-comeback-pos-search-more] remove boss-void-comeback-pos-search-more
scoreboard players add @e[tag=this] value 1
execute as @e[tag=this] at @s unless block ~ ~ ~ #ex3:like_air run tag @s add boss-void-comeback-pos-search-more
execute as @e[tag=this] at @s unless block ~ ~1 ~ #ex3:like_air run tag @s add boss-void-comeback-pos-search-more
execute as @e[tag=this] at @s if block ~ ~-1 ~ #ex3:like_air run tag @s add boss-void-comeback-pos-search-more
execute as @e[tag=this] at @s if block ~ ~-1 ~ #ex3:like_air if block ~ ~-2 ~ #ex3:like_air run tag @s add boss-void-comeback-pos-search-more
execute as @e[tag=this,tag=boss-void-comeback-pos-search-more] at @s run tp @s ~ ~1 ~
execute as @e[tag=this,tag=boss-void-comeback-pos-search-more] if score @s value matches 40 at @s run tp @s ~ ~-80 ~
execute if entity @e[tag=this,tag=boss-void-comeback-pos-search-more,limit=1] if score @e[tag=this,limit=1] value matches ..80 run function ex3:game/gamemode/pve/boss/void-comeback/pos-search
execute if entity @e[tag=this,tag=boss-void-comeback-pos-search-more,limit=1] unless score @e[tag=this,limit=1] value matches ..80 run kill @e[tag=this]