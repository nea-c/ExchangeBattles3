#スキル10
execute if score @s skill1 matches 10 run tag @s add skill1_use
execute if score @s skill2 matches 10 run tag @s add skill2_use
execute if score @s skill3 matches 10 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0010
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

tag @s add dont_place

function ex3:items/skill/bulk


playsound minecraft:block.dispenser.dispense master @a ~ ~ ~ 1 1.2
playsound minecraft:block.dispenser.dispense master @a ~ ~ ~ 1 1.2
particle minecraft:block green_stained_glass ~ ~1 ~ 0 0 0 0.2 30 force
summon minecraft:creeper ~ ~ ~ {CustomName:'{"text":"ボム"}',Tags:["skill10-bomb","this","summoned"],ignited:1b,ExplosionRadius:2b,Fuse:10000s}

attribute @e[tag=this,limit=1] generic.movement_speed base set 0
attribute @e[tag=this,limit=1] generic.follow_range base set 0
execute as @e[tag=this,limit=1] store result score @s jump run data get entity @s Rotation[0] 100000
execute as @e[tag=this,limit=1] store result score @s value2 run data get entity @s Rotation[1] 100000
scoreboard players operation @e[tag=this,limit=1] number = @s number
scoreboard players operation @e[tag=this,limit=1] team_number = @s team_number
execute if entity @s[team=ffa] run team join ffa @e[tag=this,limit=1]
tag @e[tag=this,limit=1] remove this


function ex3:items/skill/0010/auxiliary/set

