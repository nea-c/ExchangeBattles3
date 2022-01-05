data merge storage random: {data:{min:1,max:9.999}}
execute store result score #skill33 value run function ex3:general/random

playsound minecraft:item.bottle.fill master @a ~ ~ ~ 1 1.7
#slowness
execute if score #skill33 value matches 1 as @e[tag=setup] run data merge entity @s {CustomPotionEffects:[{Id:2b,Amplifier:0b,Duration:100}]}

#blindness
execute if score #skill33 value matches 2 as @e[tag=setup] run data merge entity @s {CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:100}]}

#weakness
execute if score #skill33 value matches 3 as @e[tag=setup] run data merge entity @s {CustomPotionEffects:[{Id:18b,Amplifier:0b,Duration:100}]}

#slowfalling
execute if score #skill33 value matches 4 as @e[tag=setup] run data merge entity @s {CustomPotionEffects:[{Id:28b,Amplifier:0b,Duration:100}]}

#poison
execute if score #skill33 value matches 5 as @e[tag=setup] run data merge entity @s {CustomPotionEffects:[{Id:19b,Amplifier:0b,Duration:100}]}

#wither
execute if score #skill33 value matches 6 as @e[tag=setup] run data merge entity @s {CustomPotionEffects:[{Id:20b,Amplifier:1b,Duration:100}]}

#mining_fatigure
execute if score #skill33 value matches 7 as @e[tag=setup] run data merge entity @s {CustomPotionEffects:[{Id:4b,Amplifier:0b,Duration:100}]}

#glowing
execute if score #skill33 value matches 8 as @e[tag=setup] run data merge entity @s {CustomPotionEffects:[{Id:24b,Amplifier:0b,Duration:100}]}

#levitation
execute if score #skill33 value matches 9 as @e[tag=setup] run data merge entity @s {CustomPotionEffects:[{Id:25b,Amplifier:0b,Duration:100}]}

scoreboard players reset #skill33