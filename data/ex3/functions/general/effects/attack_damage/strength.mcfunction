attribute @s minecraft:generic.attack_damage modifier remove 648d7064-6a60-4f59-8abe-c2c23a6dd7a9
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-2
execute store result score #g-ad value run data get entity @s ActiveEffects[{Id:5b}].Amplifier
scoreboard players add #g-ad value 1

execute if score #g-ad value matches 1 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 0.1 multiply
execute if score #g-ad value matches 2 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 0.199 multiply
execute if score #g-ad value matches 3 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 0.299 multiply
execute if score #g-ad value matches 4 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 0.399 multiply
execute if score #g-ad value matches 5 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 0.5 multiply
execute if score #g-ad value matches 6 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 0.6 multiply
execute if score #g-ad value matches 7 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 0.699 multiply
execute if score #g-ad value matches 8 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 0.8 multiply
execute if score #g-ad value matches 9 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 0.899 multiply
execute if score #g-ad value matches 10 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 1.0 multiply
execute if score #g-ad value matches 11 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 1.1 multiply
execute if score #g-ad value matches 12 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 1.199 multiply
execute if score #g-ad value matches 13 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 1.3 multiply
execute if score #g-ad value matches 14 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 1.399 multiply
execute if score #g-ad value matches 15 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 1.5 multiply
execute if score #g-ad value matches 16 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 1.6 multiply
execute if score #g-ad value matches 17 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 1.699 multiply
execute if score #g-ad value matches 18 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 1.8 multiply
execute if score #g-ad value matches 19 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 1.899 multiply
execute if score #g-ad value matches 20 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 2.0 multiply
execute if score #g-ad value matches 21 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 2.1 multiply
execute if score #g-ad value matches 22 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 2.199 multiply
execute if score #g-ad value matches 23 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 2.3 multiply
execute if score #g-ad value matches 24 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 2.399 multiply
execute if score #g-ad value matches 25.. run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-2 "strength" 2.5 multiply

scoreboard players reset #g-ad