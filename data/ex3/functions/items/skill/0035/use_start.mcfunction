#スキル33

playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 1.3
playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 1.3
playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.2 0.7

tag @s add using
scoreboard players set #item value 35
function ex3:items/skill/loot_before
summon marker ~ ~ ~ {Tags:["skill35-time","this","fixed","death-owner-end"]}
scoreboard players operation @e[tag=this] number = @s number
execute if score @s skill1 matches 35 run tag @e[tag=this] add slot1
execute if score @s skill2 matches 35 run tag @e[tag=this] add slot2
execute if score @s skill3 matches 35 run tag @e[tag=this] add slot3
loot replace block 0 0 0 container.0 loot ex3:items/skill/0035
execute store result score #- value run data get block 0 0 0 Items[0].tag.e-time 1
scoreboard players operation #- value *= #20 value
scoreboard players operation @e[tag=this] value2 = #- value
tag @e[tag=this] remove this
scoreboard players reset #- value