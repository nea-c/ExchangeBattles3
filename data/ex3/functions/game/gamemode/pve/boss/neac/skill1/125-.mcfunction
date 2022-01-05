execute if entity @s[tag=b1s1-sound] if score @s counter matches 125 as @e[tag=detonator] run scoreboard players set @s Cooldown1_max 34
execute if entity @s[tag=b1s1-sound] if score @s counter matches 125 as @e[tag=detonator] run effect give @s minecraft:luck 1 9 true
execute if entity @s[tag=b1s1-sound] if score @s counter matches 125 as @e[tag=detonator] run data modify entity @s Attributes[{Name:"generic.movementSpeed"}].Base set value 0.3d
execute if score @s counter matches 125 run summon lightning_bolt ^ ^ ^3
execute if score @s counter matches 126 run summon lightning_bolt ^ ^ ^6
execute if score @s counter matches 127 run summon lightning_bolt ^ ^ ^9
execute if score @s counter matches 128 run summon lightning_bolt ^ ^ ^12
execute if score @s counter matches 129 run summon lightning_bolt ^ ^ ^15
execute if score @s counter matches 130 run summon lightning_bolt ^ ^ ^18
execute if score @s counter matches 129 run summon lightning_bolt ^ ^ ^21
execute if score @s counter matches 128 if score #difficult counter matches 3.. run summon lightning_bolt ^ ^ ^24
execute if score @s counter matches 127 if score #difficult counter matches 3.. run summon lightning_bolt ^ ^ ^27
execute if score @s counter matches 126 if score #difficult counter matches 3.. run summon lightning_bolt ^ ^ ^30
execute if score @s counter matches 125 if score #difficult counter matches 3.. run summon lightning_bolt ^ ^ ^33
execute if score @s counter matches 126 if score #difficult counter matches 4.. run summon lightning_bolt ^ ^ ^36
execute if score @s counter matches 127 if score #difficult counter matches 4.. run summon lightning_bolt ^ ^ ^39
execute if score @s counter matches 128 if score #difficult counter matches 4.. run summon lightning_bolt ^ ^ ^42
execute if score @s counter matches 129 if score #difficult counter matches 4.. run summon lightning_bolt ^ ^ ^45
