#矢


scoreboard players operation #max_arrow value = #max_arrow_base value

scoreboard players reset @s arrow_add
execute if entity @s[scores={support=8}] run scoreboard players add @s arrow_add 3

scoreboard players operation #max_arrow value += @s arrow_add
execute if score @s arrow > #max_arrow value run tag @s add excess_arrow
execute if entity @s[tag=excess_arrow] run scoreboard players operation @s arrow = #max_arrow value
execute if entity @s[tag=excess_arrow] run function ex3:items/auxiliary/arrow/set
execute if entity @s[tag=excess_arrow] run tag @s remove excess_arrow
scoreboard players reset #max_arrow



