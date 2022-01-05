#execute at @s if entity @e[type=creeper,distance=..3,limit=1] as @e[type=creeper,distance=..3] run data modify entity @s powered set value 1b
execute at @s if entity @e[scores={max_health=0..},distance=..3,limit=1] as @e[scores={max_health=0..},distance=..3] run tag @s add magic
execute at @s if entity @e[scores={max_health=0..},distance=..3,limit=1] as @e[scores={max_health=0..},distance=..3] run scoreboard players add @s damage_resist 50
execute at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 0.8
execute at @s run tp @s ~ 255 ~
tag @s add lightning_bolt