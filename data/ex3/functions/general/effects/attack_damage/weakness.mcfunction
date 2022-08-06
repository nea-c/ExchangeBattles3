attribute @s minecraft:generic.attack_damage modifier remove 22653b89-116e-49dc-9b6b-9971489b5be5
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-1
execute store result score #g-ad value run data get entity @s ActiveEffects[{Id:18}].Amplifier
scoreboard players add #g-ad value 1

execute if score #g-ad value matches 1 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-1 "weakness" -0.102 multiply
execute if score #g-ad value matches 2 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-1 "weakness" -0.2 multiply
execute if score #g-ad value matches 3 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-1 "weakness" -0.301 multiply
execute if score #g-ad value matches 4 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-1 "weakness" -0.4 multiply
execute if score #g-ad value matches 5 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-1 "weakness" -0.5 multiply
execute if score #g-ad value matches 6 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-1 "weakness" -0.601 multiply
execute if score #g-ad value matches 7 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-1 "weakness" -0.7 multiply
execute if score #g-ad value matches 8 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-1 "weakness" -0.801 multiply
execute if score #g-ad value matches 9 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-1 "weakness" -0.9 multiply
execute if score #g-ad value matches 10.. run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-1 "weakness" -1.0 multiply

scoreboard players reset #g-ad