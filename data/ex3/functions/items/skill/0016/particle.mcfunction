#スキル16


#スキル16

scoreboard players add @s value2 1

execute positioned ^ ^ ^ run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force @a
execute positioned ^ ^ ^ run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.04 1.2


execute if score @s value2 matches ..200 positioned ^ ^ ^0.5 run function ex3:items/skill/0016/particle
