#最大体力変動
scoreboard players operation @s max_health = #max_health_base value
execute if entity @s[scores={support=3}] run scoreboard players remove @s max_health 4
execute if entity @s[scores={support=4}] run scoreboard players add @s max_health 8
execute if entity @s[tag=skill24-now] run scoreboard players set @s max_health 10
