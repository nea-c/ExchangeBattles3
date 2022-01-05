#スキル33
#execute if score @s skill1 matches 33 run tag @s add skill1_use
#execute if score @s skill2 matches 33 run tag @s add skill2_use
#execute if score @s skill3 matches 33 run tag @s add skill3_use
#===================================================================

execute unless entity @e[tag=skill35-this,limit=1] if score @s skill1 matches 35 run tag @s add skill1_use
execute unless entity @e[tag=skill35-this,limit=1] if score @s skill2 matches 35 run tag @s add skill2_use
execute unless entity @e[tag=skill35-this,limit=1] if score @s skill3 matches 35 run tag @s add skill3_use
execute if entity @e[tag=skill35-this,tag=slot1,limit=1] run tag @s add skill1_use
execute if entity @e[tag=skill35-this,tag=slot2,limit=1] run tag @s add skill2_use
execute if entity @e[tag=skill35-this,tag=slot3,limit=1] run tag @s add skill3_use

playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 1.3
playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 1.3
playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.2 0.7

loot replace block 0 0 0 container.0 loot ex3:items/skill/0035
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1


scoreboard players operation #- number = @s number
execute as @e[tag=skill35-time] if score @s number = #- number run tag @s add skill35-using

execute if entity @e[tag=skill35-using,limit=1] as @e[tag=skill35-using] run scoreboard players operation #- value = @s value

scoreboard players set #- value2 15
scoreboard players operation #- value *= #- value2
scoreboard players operation #- value /= #10 value
scoreboard players operation #- value /= #20 value

execute if score #ct value < #- value run scoreboard players operation #ct value = #- value

execute if entity @e[tag=skill35-using,limit=1] as @e[tag=skill35-using] run kill @s

function ex3:items/skill/bulk

effect give @s blindness 3 0 true
effect give @s slowness 3 2 true

execute if entity @s[tag=skill35-End] run tag @s remove skill35-End