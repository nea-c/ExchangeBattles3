

summon area_effect_cloud ~ ~ ~ {Duration:10000,Tags:["respawn-search","this"]}

function ex3:general/health_proc/respawn/search/random

execute if entity @e[tag=this] store result score @a[tag=respawning-owner,limit=1] respawn-x run data get entity @e[tag=this,limit=1] Pos[0] 10
execute if entity @e[tag=this] store result score @a[tag=respawning-owner,limit=1] respawn-y run data get entity @e[tag=this,limit=1] Pos[1] 10
execute if entity @e[tag=this] store result score @a[tag=respawning-owner,limit=1] respawn-z run data get entity @e[tag=this,limit=1] Pos[2] 10
#execute if entity @e[tag=this] at @e[tag=this,limit=1] positioned ~ ~-0.4 ~ run tp @s ~ ~ ~ ~ ~
execute if entity @e[tag=this] run tag @s add respawn-change

kill @e[tag=this]
