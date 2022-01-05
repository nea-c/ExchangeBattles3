#スキル34
execute if score @s skill1 matches 34 run tag @s add skill1_use
execute if score @s skill2 matches 34 run tag @s add skill2_use
execute if score @s skill3 matches 34 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0034
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk

kill @e[type=potion,tag=setup,limit=1]

playsound minecraft:entity.witch.throw master @a ~ ~ ~ 0.8 1
playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 0.8 0.5
playsound minecraft:ui.button.click master @a ~ ~ ~ 0.5 2

execute at @s anchored eyes positioned ^ ^ ^0.1 run summon item ~ ~ ~ {Tags:["skill34-grenade","this","fixed"],NoGravity:1b,Fire:0s,Invulnerable:1b,Age:5800s,PickupDelay:32767s,Item:{id:"stone_button",Count:1b,tag:{CustomModelData:30034}}}
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^2.0 {Tags:["vector"],Duration:1}
scoreboard players operation @e[tag=this,limit=1] number = @s number
scoreboard players operation @e[tag=this,limit=1] team_number = @s team_number
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos

kill @e[tag=vector]
tag @e[tag=this] remove this
