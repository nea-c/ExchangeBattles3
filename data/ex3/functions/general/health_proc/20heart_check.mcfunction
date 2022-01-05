scoreboard players operation #health_calc value = @s health
scoreboard players operation #health_calc value *= #20 value
scoreboard players operation #health value = @s max_health
scoreboard players operation #health value *= #10 value
scoreboard players operation #health_calc value /= #health value

execute if score @s health > #health value run scoreboard players operation @s health = #health value
 
execute if score #health_calc value matches 0 run scoreboard players add #health_calc value 1
execute unless score @s health_20heart = #health_calc value unless score @s health matches ..0 run function ex3:general/health_proc/display/set
execute if score @s health_20heart < #health_calc value unless score @s health matches ..0 run effect give @s instant_health 1 4 true

scoreboard players reset #health
scoreboard players reset #health_calc