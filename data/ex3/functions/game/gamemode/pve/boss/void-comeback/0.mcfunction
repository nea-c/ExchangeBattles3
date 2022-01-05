

summon area_effect_cloud ~ ~ ~ {Duration:10000,Tags:["boss-void-comeback","this"]}

function ex3:game/gamemode/pve/boss/void-comeback/random

execute if entity @e[tag=this] at @e[tag=this,limit=1] positioned ~ ~-0.4 ~ run tp @s ~ ~ ~ ~ ~
#execute if entity @e[tag=this] at @e[tag=this,limit=1] positioned ~ ~-0.4 ~ run tp @s ~ ~ ~ ~ ~
execute if entity @e[tag=this] run tag @s remove into_void

kill @e[tag=this]
