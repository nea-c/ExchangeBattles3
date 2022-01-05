scoreboard players remove #arrow_particle value 1
execute as @a unless score @s team_number = #- team_number run particle dust 1 0.5 0 0.6 ^ ^ ^ 0 0 0 0 1 force @s
execute as @a if score @s team_number = #- team_number run particle dust 0 1 1 0.6 ^ ^ ^ 0 0 0 0 1 force @s
execute if score #arrow_particle value matches 0.. positioned ^ ^ ^-0.5 run function ex3:items/auxiliary/arrow/particle/team