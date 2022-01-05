#スキル19
execute if score @s skill1 matches 19 run tag @s add skill1_use
execute if score @s skill2 matches 19 run tag @s add skill2_use
execute if score @s skill3 matches 19 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0019
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk


playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 1.7
particle block smooth_stone ~ ~1 ~ 3 2 3 0 40 force


execute anchored eyes positioned ^ ^ ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity","wall_center"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^1 ^ ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^2 ^ ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^-1 ^ ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^-2 ^ ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^ ^1 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^ ^2 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^ ^-1 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^ ^-2 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^1 ^1 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^2 ^1 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^-1 ^1 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^-2 ^1 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^1 ^-1 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^2 ^-1 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^-1 ^-1 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^-2 ^-1 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^1 ^2 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^2 ^2 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^-1 ^2 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^-2 ^2 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^1 ^-2 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^2 ^-2 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^-1 ^-2 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute anchored eyes positioned ^-2 ^-2 ^3 run summon armor_stand ~ ~-0.5 ~ {Tags:["wall","this","fixed","death-owner-end","wall_entity"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Health:10f,AttachFace:0b,Color:7b,Tags:["wall","this","fixed","death-owner-end","wall_entity"],Attributes:[{Name:"generic.max_health",Base:10}]}]}
execute as @e[tag=this] positioned as @s run tp @s ~ ~ ~ ~ 0
scoreboard players operation @e[tag=this] number = @s number
execute as @e[tag=this] run tag @s remove this

