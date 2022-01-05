
scoreboard players operation #- number = @s number
execute as @e[tag=arrow-reload-time] if score @s number = #- number run tag @s add arrow-reloading

execute if entity @s[scores={arrow=0}] unless entity @e[tag=arrow-reloading,limit=1] run tag @s add reload_execution
execute if entity @s[tag=reload_execution] run function ex3:items/auxiliary/arrow/reload/execution
execute if entity @s[tag=reload_execution] run scoreboard players set @e[tag=this] value 100
execute if entity @s[tag=reload_execution] run tag @e[tag=this] remove this
execute if entity @s[tag=reload_execution] run tag @s remove reload_execution

execute as @e[tag=arrow-reloading] run tag @s remove arrow-reloading

scoreboard players reset #-