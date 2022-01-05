#スキル23
execute if score @s skill1 matches 23 run tag @s add skill1_use
execute if score @s skill2 matches 23 run tag @s add skill2_use
execute if score @s skill3 matches 23 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0023
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk



playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 1.7
particle minecraft:item glowstone ~ ~1 ~ 0 0 0 1 20 force



effect give @s minecraft:speed 5 4

tag @s add surge_anchor

scoreboard players operation #- team_number = @s team_number
execute if entity @a[scores={max_health=0..},limit=1] as @a[scores={max_health=0..}] unless score @s team_number = #- team_number run tag @s add surge_target
execute if entity @a[scores={max_health=0..},tag=surge_target,limit=1] as @a[scores={max_health=0..},tag=surge_target,sort=nearest,limit=1] run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function ex3:items/skill/0023/hit

execute if entity @a[scores={max_health=0..},tag=surge_target,limit=1] as @a[scores={max_health=0..},tag=surge_target] run tag @s remove surge_target

scoreboard players reset #-

tag @s remove surge_anchor

