#スキル33
#execute if score @s skill1 matches 33 run tag @s add skill1_use
#execute if score @s skill2 matches 33 run tag @s add skill2_use
#execute if score @s skill3 matches 33 run tag @s add skill3_use
#===================================================================

execute unless entity @e[tag=skill33-this,limit=1] if score @s skill1 matches 33 run tag @s add skill1_use
execute unless entity @e[tag=skill33-this,limit=1] if score @s skill2 matches 33 run tag @s add skill2_use
execute unless entity @e[tag=skill33-this,limit=1] if score @s skill3 matches 33 run tag @s add skill3_use
execute if entity @e[tag=skill33-this,tag=slot1,limit=1] run tag @s add skill1_use
execute if entity @e[tag=skill33-this,tag=slot2,limit=1] run tag @s add skill2_use
execute if entity @e[tag=skill33-this,tag=slot3,limit=1] run tag @s add skill3_use
execute if entity @s[tag=skill33-End] run playsound minecraft:item.bottle.fill master @a ~ ~ ~ 1 1.7

loot replace block 0 0 0 container.0 loot ex3:items/skill/0033
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1


scoreboard players operation #- number = @s number
execute as @e[tag=skill33-time] if score @s number = #- number run tag @s add skill33-using

execute if entity @e[tag=skill33-using,limit=1] as @e[tag=skill33-using] run scoreboard players operation #- value = @s value

scoreboard players set #- value2 15
scoreboard players operation #- value *= #- value2
scoreboard players operation #- value /= #10 value
scoreboard players operation #- value /= #20 value

execute if score #ct value < #- value run scoreboard players operation #ct value = #- value

execute if entity @e[tag=skill33-using,limit=1] as @e[tag=skill33-using] run kill @s

function ex3:items/skill/bulk


execute if entity @s[tag=skill33-End] run tag @s remove skill33-End