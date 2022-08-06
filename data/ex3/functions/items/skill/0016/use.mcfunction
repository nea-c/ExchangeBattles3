#スキル16
execute if score @s skill1 matches 16 run tag @s add skill1_use
execute if score @s skill2 matches 16 run tag @s add skill2_use
execute if score @s skill3 matches 16 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0016
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk



playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 1.5
particle minecraft:witch ~ ~1 ~ 0.2 0.2 0.2 0.4 10 force


summon minecraft:bat ~ ~ ~ {Tags:["skill16-bullet","no1","this","no_entity","fixed","death-owner-end"],Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}
summon minecraft:bat ~ ~ ~ {Tags:["skill16-bullet","no2","this","no_entity","fixed","death-owner-end"],Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}
summon minecraft:bat ~ ~ ~ {Tags:["skill16-bullet","no3","this","no_entity","fixed","death-owner-end"],Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}

scoreboard players operation @e[tag=this] number = @s number
scoreboard players operation @e[tag=this] team_number = @s team_number
tag @e[tag=this] remove this
