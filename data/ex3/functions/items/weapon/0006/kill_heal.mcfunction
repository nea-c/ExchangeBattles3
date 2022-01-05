#メイン6

scoreboard players operation #health value2 = @s max_health
scoreboard players operation #health value2 *= #10 value

execute if score @s health < #health value2 run scoreboard players operation #health value = @s health
execute if score @s health < #health value2 run scoreboard players add @s health 60
execute if score @s health > #health value2 run scoreboard players operation @s health = #health value2
execute unless score @s health = #health value at @s run function ex3:general/health_proc/damage/indicator/summon
