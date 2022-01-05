
scoreboard players remove @s value 1


tag @s add skill2_me-
execute as @e[tag=skill2-anchor] run function ex3:items/skill/0002/hit/sus/check



execute as @e[tag=owner] at @s run particle minecraft:dust 0 0 0.6 1 ~ ~1 ~ 0.2 0.3 0.2 0 1 force
execute as @e[tag=owner] if entity @s[nbt={ActiveEffects:[{Id:26b}]}] run effect clear @s luck

execute unless score @s value matches 1.. run tag @e[tag=owner,tag=skill2-anchor] remove skill2-anchor

tag @s remove skill2_me-

execute as @e[tag=owner] run tag @s add skill2-melt_now
execute as @e[tag=owner] run tag @s remove owner
execute unless score @s value matches 1.. run kill @s
