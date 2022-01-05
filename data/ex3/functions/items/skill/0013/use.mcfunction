#スキル13
execute if score @s skill1 matches 13 run tag @s add skill1_use
execute if score @s skill2 matches 13 run tag @s add skill2_use
execute if score @s skill3 matches 13 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0013
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk




playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 2
particle minecraft:heart ~ ~1 ~ 0.2 0.4 0.2 0 2


scoreboard players operation #health value2 = @s max_health
scoreboard players operation #health value2 *= #10 value

scoreboard players operation #health value = @s health
execute if score @s health < #health value2 run scoreboard players add @s health 40
execute if score @s health > #health value2 run function ex3:general/health_proc/full-recovery
execute unless score @s health = #health value at @s run function ex3:general/health_proc/damage/indicator/summon

scoreboard players reset #health