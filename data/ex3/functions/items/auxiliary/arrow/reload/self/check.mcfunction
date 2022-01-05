#自己リロード実行
scoreboard players operation #max_arrow value = #max_arrow_base value
scoreboard players operation #max_arrow value += @s arrow_add

scoreboard players operation #- number = @s number
execute as @e[tag=arrow-reload-check] if score @s number = #- number run tag @s add arrow-reload-checking
execute as @e[tag=arrow-reload-time] if score @s number = #- number run tag @s add arrow-reloading

execute if entity @e[tag=arrow-reload-checking,limit=1] unless entity @e[tag=arrow-reloading,limit=1] unless score @s arrow >= #max_arrow value run tag @s add arrow_reload
execute unless entity @e[tag=arrow-reload-checking,limit=1] unless entity @e[tag=arrow-reloading,limit=1] unless score @s arrow >= #max_arrow value run tag @s add arrow_reload_check

execute if entity @s[tag=arrow_reload_check] run summon marker 0 0 0 {Tags:["arrow-reload-check","this"]}
execute if entity @s[tag=arrow_reload_check] run scoreboard players operation @e[tag=this] number = @s number
execute if entity @s[tag=arrow_reload_check] run tag @e[tag=this] remove this
execute if entity @s[tag=arrow_reload_check] run tag @s remove arrow_reload_check

execute if entity @s[tag=arrow_reload] run kill @e[tag=arrow-reload-checking]
execute if entity @s[tag=arrow_reload] run function ex3:items/auxiliary/arrow/reload/execution
execute if entity @s[tag=arrow_reload] run scoreboard players set @e[tag=this] value 80
execute if entity @s[tag=arrow_reload] run tag @e[tag=this] remove this
execute if entity @s[tag=arrow_reload] run tag @s remove arrow_reload

execute as @e[tag=arrow-reload-checking] run tag @s remove arrow-reload-checking
execute as @e[tag=arrow-reloading] run tag @s remove arrow-reloading

scoreboard players reset #max_arrow
scoreboard players reset #-