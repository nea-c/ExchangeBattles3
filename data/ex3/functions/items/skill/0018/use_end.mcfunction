#スキル18
#execute if score @s skill1 matches 18 run tag @s add skill1_use
#execute if score @s skill2 matches 18 run tag @s add skill2_use
#execute if score @s skill3 matches 18 run tag @s add skill3_use
#===================================================================

execute if entity @e[tag=skill18-this,tag=slot1,limit=1] run tag @s add skill1_use
execute if entity @e[tag=skill18-this,tag=slot2,limit=1] run tag @s add skill2_use
execute if entity @e[tag=skill18-this,tag=slot3,limit=1] run tag @s add skill3_use
playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 2
particle minecraft:spit ~ ~1 ~ 0.6 0.6 0.6 0.2 10 force

loot replace block 0 0 0 container.0 loot ex3:items/skill/0018
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1

tag @s remove elytra
clear @s elytra{elytra:1b}
function ex3:items/team_armor/setup

scoreboard players operation #- number = @s number
execute as @e[tag=skill18-time] if score @s number = #- number run tag @s add skill18-using

execute if entity @e[tag=skill18-using,limit=1] as @e[tag=skill18-using] run scoreboard players operation #- value = @s value

scoreboard players operation #- value /= #20 value
scoreboard players operation #ct value += #- value

execute if entity @e[tag=skill18-using,limit=1] as @e[tag=skill18-using] run kill @s

function ex3:items/skill/bulk
function ex3:items/skill/setup



execute if entity @s[tag=skill18-End] run tag @s remove skill18-End