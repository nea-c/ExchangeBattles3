particle minecraft:end_rod ^ ^ ^3 0 0 0 1 10 force @a
particle minecraft:end_rod ^ ^ ^6 0 0 0 1 10 force @a
particle minecraft:end_rod ^ ^ ^9 0 0 0 1 10 normal @a
particle minecraft:end_rod ^ ^ ^12 0 0 0 1 10 normal @a
particle minecraft:end_rod ^ ^ ^15 0 0 0 1 10 force @a
particle minecraft:end_rod ^ ^ ^18 0 0 0 1 10 force @a
particle minecraft:end_rod ^ ^ ^21 0 0 0 1 10 normal @a
execute if score #difficult counter matches 3.. run particle minecraft:end_rod ^ ^ ^24 0 0 0 1 10 force @a
execute if score #difficult counter matches 3.. run particle minecraft:end_rod ^ ^ ^27 0 0 0 1 10 force @a
execute if score #difficult counter matches 3.. run particle minecraft:end_rod ^ ^ ^30 0 0 0 1 10 force @a
execute if score #difficult counter matches 3.. run particle minecraft:end_rod ^ ^ ^33 0 0 0 1 10 force @a
execute if score #difficult counter matches 4.. run particle minecraft:end_rod ^ ^ ^36 0 0 0 1 10 force @a
execute if score #difficult counter matches 4.. run particle minecraft:end_rod ^ ^ ^39 0 0 0 1 10 force @a
execute if score #difficult counter matches 4.. run particle minecraft:end_rod ^ ^ ^42 0 0 0 1 10 force @a
execute if score #difficult counter matches 4.. run particle minecraft:end_rod ^ ^ ^45 0 0 0 1 10 force @a
execute if entity @s[tag=b1s1-sound] run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 4.5 0.8
scoreboard players set @s subcounter 0
execute if score #difficult counter matches 1 run scoreboard players set @s Cooldown1 21
execute if score #difficult counter matches 2 run scoreboard players set @s Cooldown1 6
execute if score #difficult counter matches 3.. if entity @s[tag=b1s1-sound] as @e[tag=detonator] at @s run function wancomatter:boss/detonator/skill2/advent
