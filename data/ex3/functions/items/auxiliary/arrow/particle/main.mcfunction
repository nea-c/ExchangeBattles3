#矢にパーティクル発生

scoreboard players operation #- team_number = @s team_number

execute unless entity @e[tag=vector,limit=1] run summon marker 0.0 0.0 0.0 {Tags:["vector"]}
tp @e[tag=vector] 0.0 0.0 0.0 ~ ~

data modify entity @e[tag=vector,limit=1,x=0,y=0,z=0,distance=..1] Pos set from entity @s Motion

summon marker 0.0 0.0 0.0 {Tags:["vector_amount"]}
execute positioned 0.0 0.0 0.0 facing entity @e[tag=vector,limit=1,sort=nearest] feet run tp @e[tag=vector_amount] ~ ~ ~ ~ ~
execute at @e[tag=vector_amount] if entity @e[distance=8..16,tag=vector,limit=1,sort=nearest] run scoreboard players add #arrow_particle value2 8
execute as @e[tag=vector_amount] at @s if entity @e[distance=8..16,tag=vector,limit=1,sort=nearest] run tp @s ^ ^ ^8
execute at @e[tag=vector_amount] if entity @e[distance=4..8,tag=vector,limit=1,sort=nearest] run scoreboard players add #arrow_particle value2 5
execute as @e[tag=vector_amount] at @s if entity @e[distance=4..8,tag=vector,limit=1,sort=nearest] run tp @s ^ ^ ^4
execute at @e[tag=vector_amount] if entity @e[distance=2..4,tag=vector,limit=1,sort=nearest] run scoreboard players add #arrow_particle value2 2
execute as @e[tag=vector_amount] at @s if entity @e[distance=2..4,tag=vector,limit=1,sort=nearest] run tp @s ^ ^ ^2
execute at @e[tag=vector_amount] if entity @e[distance=1..2,tag=vector,limit=1,sort=nearest] run scoreboard players add #arrow_particle value2 1
execute as @e[tag=vector_amount] at @s if entity @e[distance=1..2,tag=vector,limit=1,sort=nearest] run tp @s ^ ^ ^1
execute at @e[tag=vector_amount] if entity @e[distance=0.5..1,tag=vector,limit=1,sort=nearest] run scoreboard players add #arrow_particle value2 1
execute as @e[tag=vector_amount] at @s if entity @e[distance=0.5..1,tag=vector,limit=1,sort=nearest] run tp @s ^ ^ ^0.5

scoreboard players operation #arrow_particle value = #arrow_particle value2
execute rotated as @e[tag=vector_amount,limit=1] run function ex3:items/auxiliary/arrow/particle/team
scoreboard players operation #arrow_particle value = #arrow_particle value2
execute if entity @s[tag=crit] rotated as @e[tag=vector_amount,limit=1] run function ex3:items/auxiliary/arrow/particle/crit
kill @e[tag=vector_amount]

scoreboard players reset #arrow_particle

execute if entity @s[tag=weapon5--] run particle cloud ~ ~ ~ 0 0 0 0.1 1 force @a

kill @e[tag=vector]
#playsound entity.arrow.shoot master @a ~ ~ ~ 0.2 2

scoreboard players reset #-