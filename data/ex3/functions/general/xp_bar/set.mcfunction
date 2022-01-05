execute if score #xp_max value matches 1.. run scoreboard players set #xp_bar value 111
execute if score #xp_max value matches 1.. run scoreboard players operation #xp_bar value *= #xp_value value
execute if score #xp_max value matches 1.. run scoreboard players operation #xp_bar value /= #xp_max value
execute if score #xp_max value matches 1.. run scoreboard players operation #xp_bar value2 = #xp_value value
execute if score #xp_value value2 matches 20 run scoreboard players add #xp_bar value2 19
execute if score #xp_value value2 matches 1.. run scoreboard players operation #xp_bar value2 /= #xp_value value2

xp set @s 30 levels
xp set @s 0 points
execute if score #xp_bar value2 matches 1.. if score #xp_bar value matches 1.. run function ex3:general/xp_bar/gauge
xp set @s 0 levels

execute if score #xp_bar value2 matches 1.. run function ex3:general/xp_bar/level

scoreboard players reset #xp_bar
scoreboard players reset #xp_value
scoreboard players reset #xp_max