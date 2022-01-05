

fill ~ ~ ~ ~80 ~3 ~80 air
fill ~ ~ ~ ~-80 ~3 ~80 air
fill ~ ~ ~ ~80 ~3 ~-80 air
fill ~ ~ ~ ~-80 ~3 ~-80 air

scoreboard players add #replace_air_sub value 1
execute unless score #replace_air_sub value matches 8.. positioned ~ ~4 ~ run function ex3:generate_structure/air_sub