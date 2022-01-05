#スキル28
execute if score @s skill1 matches 28 run tag @s add skill1_use
execute if score @s skill2 matches 28 run tag @s add skill2_use
execute if score @s skill3 matches 28 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0028
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk

summon armor_stand ~ ~-1.8 ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,Glowing:1b,Tags:["skill28-banner","this"],ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b}]}
summon armor_stand ~ ~ ~ {Invisible:1b,NoBasePlate:1b,NoGravity:1b,Tags:["skill28-pointer","this"]}
scoreboard players operation @e[tag=this] number = @s number
scoreboard players operation @e[tag=this] team_number = @s team_number
execute rotated ~ 0 run tp @e[tag=this,tag=skill28-banner] ^ ^-1.8 ^0.25 ~ ~

tag @e[tag=this] remove this

particle minecraft:block black_stained_glass ~ ~1 ~ 0 0 0 0.2 30 force
playsound minecraft:item.lodestone_compass.lock master @a ~ ~ ~ 1 1.4
playsound minecraft:item.lodestone_compass.lock master @a ~ ~ ~ 1 1.4