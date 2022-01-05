tag @e[tag=this,tag=boss-void-comeback-pos-search] remove boss-void-comeback-pos-search
spreadplayers ~ ~ 10 20 false @e[tag=this]
data modify entity @e[tag=this,limit=1] Pos[1] set from entity @a[scores={max_health=0..},sort=random,limit=1] Pos[1]
execute as @e[tag=this] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~
execute as @e[tag=this] at @s unless block ~ ~ ~ #ex3:like_air run tag @s add boss-void-comeback-pos-search
execute as @e[tag=this] at @s unless block ~ ~1 ~ #ex3:like_air run tag @s add boss-void-comeback-pos-search
execute as @e[tag=this] at @s if block ~ ~-1 ~ #ex3:like_air run tag @s add boss-void-comeback-pos-search
execute as @e[tag=this] at @s if block ~ ~-1 ~ #ex3:like_air if block ~ ~-1 ~ #ex3:like_air run tag @s add boss-void-comeback-pos-search
execute if entity @e[tag=this,tag=boss-void-comeback-pos-search,limit=1] positioned ~ ~ ~ run function ex3:game/gamemode/pve/boss/void-comeback/pos-search