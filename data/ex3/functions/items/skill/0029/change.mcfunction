#スキル29

data merge storage random: {data:{min:0,max:360}}
execute store result entity @s Rotation[0] float 1 run function ex3:general/random
data merge storage random: {data:{min:-30.999,max:30.999}}
execute store result entity @s Rotation[1] float 1 run function ex3:general/random
data merge storage random: {data:{min:1,max:100.999}}
execute store result score @s value2 run function ex3:general/random
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.8
execute at @s run particle flash ~ ~ ~ 0 0 0 0 3 force
execute at @s run function ex3:items/skill/0029/tp
execute at @s facing entity @e[scores={max_health=0..},tag=skill29-target-c,sort=nearest,limit=1] eyes run teleport @s ~ ~ ~ ~ ~
execute at @s run particle flash ~ ~ ~ 0 0 0 0 3 force
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.8
data merge storage random: {data:{min:1,max:100.999}}
execute store result score @s value2 run function ex3:general/random
