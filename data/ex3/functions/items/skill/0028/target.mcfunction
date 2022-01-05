#スキル28

execute if entity @s[tag=skill28-tp,distance=7..80] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=skill28-banner-anchor,tag=!skill28-same-team,dx=0,limit=1] positioned ~0.5 ~0.5 ~0.5 run function ex3:items/skill/0028/tp
execute if entity @s[tag=!skill28-tp,distance=7..80] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=skill28-banner-anchor,tag=!skill28-same-team,dx=0,limit=1] run tag @s add skill28-check

execute if entity @s[distance=..80] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[tag=skill28-banner-anchor,dx=0,limit=1] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #ex3:like_air positioned ^ ^ ^0.5 run function ex3:items/skill/0028/target

