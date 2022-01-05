#スキル9
scoreboard players add @e[tag=this] value 1

execute unless block ~ ~-1 ~ #ex3:like_air run tag @e[tag=this] add ground
execute positioned ~ ~-1 ~ if entity @e[tag=wall_entity,limit=1,dx=0] run tag @e[tag=this] add ground

tp @e[tag=this] ~ ~ ~
execute positioned ~ ~-1 ~ if entity @e[tag=this,tag=!ground,limit=1] run function ex3:items/skill/0009/search