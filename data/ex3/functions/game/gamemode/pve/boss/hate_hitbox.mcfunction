execute if entity @s[tag=sils_hitbox] run scoreboard players operation @e[tag=sils,limit=1,sort=nearest] HP -= @s damageTaken
execute if entity @s[tag=sils_hitbox] run particle minecraft:block minecraft:glass ~ ~1 ~ 1 1 1 1 50 force @a
execute if entity @s[tag=sils_hitbox] run particle minecraft:block minecraft:glass ~ ~1 ~ 1 1 1 1 200 normal @a
execute if entity @s[tag=sils_hitbox] run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0.6



scoreboard players reset @s damageTaken
