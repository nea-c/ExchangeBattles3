

summon area_effect_cloud ~ ~ ~ {Duration:10000,Tags:["respawn-search","this"]}

function ex3:general/health_proc/respawn/search/random

execute if entity @e[tag=this] at @e[tag=this,limit=1] positioned ~ ~-0.4 ~ run function ex3:game/gamemode/pvp/2team/emit/object_summon
execute if entity @e[tag=this] run tag @s add respawn-change

kill @e[tag=this]
