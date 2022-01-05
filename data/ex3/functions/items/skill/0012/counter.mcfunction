#スキル12


scoreboard players operation #- number = @s number
execute as @e[tag=skill12-time] if score @s number = #- number run tag @s add skill12-this

loot replace block 0 0 0 container.0 loot ex3:items/skill/0012
execute store result score #- value run data get block 0 0 0 Items[0].tag.cooltime[1] 1
data remove block 0 0 0 Items[]
scoreboard players operation #- value *= #20 value
function ex3:items/support/skill-activate/add
execute if entity @e[tag=skill12-this,tag=slot1,limit=1] run scoreboard players operation @s skill1_ct += #- value
execute if entity @e[tag=skill12-this,tag=slot1,limit=1] run scoreboard players operation @s skill1_ct_max += #- value
execute if entity @e[tag=skill12-this,tag=slot2,limit=1] run scoreboard players operation @s skill2_ct += #- value
execute if entity @e[tag=skill12-this,tag=slot2,limit=1] run scoreboard players operation @s skill2_ct_max += #- value
execute if entity @e[tag=skill12-this,tag=slot3,limit=1] run scoreboard players operation @s skill3_ct += #- value
execute if entity @e[tag=skill12-this,tag=slot3,limit=1] run scoreboard players operation @s skill3_ct_max += #- value
execute if entity @e[tag=skill12-this,limit=1] run function ex3:items/skill/setup


execute unless entity @s[advancements={ex3:general/attack/taken_by_fall=true}] unless score @s number = @s hurt_by run scoreboard players reset @s damage_resist
execute unless entity @s[advancements={ex3:general/attack/taken_by_fall=true}] unless score @s number = @s hurt_by run scoreboard players reset @s damage_source
playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0.7
playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0.7
particle minecraft:dust 1 1 0 1 ~ ~1 ~ 2 2 2 0 40 force
particle minecraft:dust 1 1 0 1 ~ ~1 ~ 2 2 2 0 40 force
tag @s add anchor
particle minecraft:flash ~ ~1 ~ 0 0 0 0 10 force @a[tag=!anchor]
tag @s remove anchor

scoreboard players operation #- team_number = @s team_number
execute if entity @e[scores={max_health=0..},distance=..5,limit=1] as @e[scores={max_health=0..},distance=..5] unless score @s team_number = #- team_number run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function ex3:items/skill/0012/hit


execute if entity @e[tag=skill12-this,limit=1] as @e[tag=skill12-this] run kill @s


scoreboard players reset #-
