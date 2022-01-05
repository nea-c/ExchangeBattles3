
fill 0 1 0 1 4 0 minecraft:air


execute positioned 0 100 0 run function ex3:generate_structure/air_sub

#execute positioned 32 100 32 run fill ~ ~ ~ ~32 ~29 ~32 air
#execute positioned 32 100 32 run fill ~ ~ ~ ~-32 ~29 ~32 air
#execute positioned 32 100 32 run fill ~ ~ ~ ~32 ~29 ~-32 air
#execute positioned 32 100 32 run fill ~ ~ ~ ~-32 ~29 ~-32 air

#execute positioned 32 130 32 run fill ~ ~ ~ ~32 ~29 ~32 air
#execute positioned 32 130 32 run fill ~ ~ ~ ~-32 ~29 ~32 air
#execute positioned 32 130 32 run fill ~ ~ ~ ~32 ~29 ~-32 air
#execute positioned 32 130 32 run fill ~ ~ ~ ~-32 ~29 ~-32 air

scoreboard players reset #replace_air_sub value