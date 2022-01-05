playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.6
particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0 2 force @a
particle minecraft:poof ~ ~ ~ 1 1 1 0.6 60 force @a

tag @s add now
execute as @e[distance=..6,scores={max_health=1..}] run tag @s add hit
execute as @e[tag=hit] unless score @s number = @e[tag=now,limit=1,sort=nearest] number if score @s team_number = @e[tag=now,limit=1,sort=nearest] team_number run tag @s remove hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run function ex3:items/skill/0034/hit
tag @s remove now
scoreboard players reset #skill34

kill @s
