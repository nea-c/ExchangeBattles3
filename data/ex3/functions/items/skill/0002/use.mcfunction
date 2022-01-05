#スキル2
execute if score @s skill1 matches 2 run tag @s add skill1_use
execute if score @s skill2 matches 2 run tag @s add skill2_use
execute if score @s skill3 matches 2 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0002
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk



particle minecraft:nautilus ~ ~1 ~ 0.7 0.7 0.7 0 30 force
playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 1.8


scoreboard players operation #- number = @s number
scoreboard players operation #- team_number = @s team_number
execute if entity @e[scores={max_health=0..},distance=..5,limit=1] as @e[scores={max_health=0..},distance=..5] unless score @s team_number = #- team_number run tag @s add hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run function ex3:items/skill/0002/hit/0
