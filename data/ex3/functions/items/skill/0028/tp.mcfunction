#スキル28

execute positioned as @e[tag=skill28-banner-anchor,tag=!skill28-same-team,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1.2
execute at @s run particle minecraft:flash ~ ~1 ~ 0 0 0 2 1 force @a

tag @s remove skill28-tp