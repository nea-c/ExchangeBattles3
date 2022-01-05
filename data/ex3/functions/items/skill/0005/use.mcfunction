#スキル5
execute if score @s skill1 matches 5 run tag @s add skill1_use
execute if score @s skill2 matches 5 run tag @s add skill2_use
execute if score @s skill3 matches 5 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0005
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]


function ex3:items/skill/bulk


particle item snow_block ~ ~1 ~ 0.3 0.4 0.3 0.4 20 force
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 1.3

summon minecraft:snow_golem ~ ~ ~ {CustomName:'{"text":"ゆきだるま伯爵"}',Tags:["earl","this"],Silent:1b,Health:20f,Attributes:[{Name:"generic.max_health",Base:20}]}



attribute @e[tag=this,limit=1] generic.movement_speed base set 0
attribute @e[tag=this,limit=1] generic.follow_range base set 0
scoreboard players operation @e[tag=this,tag=earl] number = @s number
scoreboard players operation @e[tag=this,tag=earl] team_number = @s team_number
execute if entity @s[team=ffa] run team join ffa @e[tag=this,tag=earl]
tag @e[tag=this,tag=earl] remove this



scoreboard players operation #- team_number = @s team_number

execute if entity @e[tag=earl,limit=1] as @e[tag=earl] if score @s team_number = #- team_number run tag @s add earl_count_this
execute if entity @e[tag=earl_count_this,limit=1] as @e[tag=earl_count_this] store result score @s tab run execute if entity @e[tag=earl_count_this]
execute if entity @e[tag=earl_count_this,limit=1] if score @e[tag=earl_count_this,limit=1,sort=random] tab matches 2.. run kill @e[tag=earl_count_this,limit=1,sort=furthest]


execute if entity @e[tag=earl_count_this,limit=1] run tag @e[tag=earl_count_this] remove earl_count_this
