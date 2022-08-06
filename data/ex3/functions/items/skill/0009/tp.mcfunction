#スキル9
execute align y positioned ~ ~0.5 ~ run function ex3:items/skill/0009/particle
tp @s @s
execute positioned as @e[tag=this] run tp @s ~ ~-0.5 ~ ~ ~
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:5,Age:4,WaitTime:1,Radius:0.5f,Particle:"minecraft:dust 0 0 0 0",Effects:[{Id:28,Amplifier:0b,Duration:2}]}

execute at @s run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.2
execute at @s run playsound minecraft:entity.chicken.step master @a ~ ~ ~ 1

execute store result score #- value run data get block 0 0 0 Items[0].tag.cooltime[1] 1
scoreboard players operation #ct value += #- value