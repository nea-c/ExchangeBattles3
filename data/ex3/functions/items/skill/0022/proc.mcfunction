#スキル22
playsound minecraft:entity.generic.eat master @a ~ ~1 ~ 0.1 0
playsound minecraft:particle.soul_escape master @a ~ ~1 ~ 2 0
particle block soul_sand ~ ~1 ~ 2 2 2 0.1 10 force

scoreboard players add @s value 1


scoreboard players operation #- team_number = @s team_number


execute as @a unless score @s team_number = #- team_number run particle dust 1 0.5 0 2 ~ ~1 ~ 0 0.2 0 0 1 force @s
execute as @a if score @s team_number = #- team_number run particle dust 0 1 1 2 ~ ~1 ~ 0 0.2 0 0 1 force @s


execute if entity @s[scores={value=1}] positioned ~ ~1 ~ as @e[scores={max_health=0..},distance=..5] unless score @s team_number = #- team_number run tag @s add hit
execute if entity @s[scores={value=1}] if entity @e[tag=hit,limit=1] run function ex3:items/skill/0022/hit


execute if entity @s[scores={value=10..}] run scoreboard players add @s value2 5
execute if entity @s[scores={value=10..}] run scoreboard players set @s value 0

scoreboard players reset #-