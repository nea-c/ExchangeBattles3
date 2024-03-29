#スキル3

#execute if entity @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.3 10 force
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 2
tag @s add this
scoreboard players operation #- team_number = @s team_number
execute as @e[distance=..10,tag=!this,scores={max_health=0..}] unless score @s team_number = #- team_number run tag @s add hit
execute if entity @e[tag=hit,limit=1] store result score #s_player value if entity @e[tag=hit]

execute if entity @e[tag=hit,limit=1] if entity @s[tag=skill1_use] run scoreboard players operation #ct value *= #s_player value
execute if entity @e[tag=hit,limit=1] if entity @s[tag=skill2_use] run scoreboard players operation #ct value *= #s_player value
execute if entity @e[tag=hit,limit=1] if entity @s[tag=skill3_use] run scoreboard players operation #ct value *= #s_player value

execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s anchored eyes run particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 20 force
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run effect give @s minecraft:glowing 20 200

scoreboard players reset #- team_number
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run tag @s remove hit
scoreboard players reset #s_player

tag @s remove this
