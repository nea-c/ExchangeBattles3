#スキル26
execute if score @s skill1 matches 26 run tag @s add skill1_use
execute if score @s skill2 matches 26 run tag @s add skill2_use
execute if score @s skill3 matches 26 run tag @s add skill3_use
#===================================================================

execute if entity @s[tag=skill26_lv3] run tag @s remove skill26_lv2
execute if entity @s[tag=skill26_lv3] run tag @s remove skill26_lv1
execute if entity @s[tag=skill26_lv2] run tag @s remove skill26_lv1

loot replace block 0 0 0 container.0 loot ex3:items/skill/0026
execute if entity @s[tag=skill26_lv1] store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime[0] 1
execute if entity @s[tag=skill26_lv2] store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime[1] 1
execute if entity @s[tag=skill26_lv3] store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime[2] 1
data remove block 0 0 0 Items[]

summon marker 0 0 0 {Tags:["skill26-boost-time","this","fixed","death-owner-end"]}
scoreboard players operation @e[tag=this] number = @s number
tag @e[tag=this] remove this

function ex3:items/skill/bulk


particle minecraft:cloud ~ ~ ~ 0 0 0 0.5 10 force
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1.2

execute if entity @s[tag=skill26_lv1] run attribute @s generic.movement_speed modifier add 0-0-0-3-0026 "skill26" 3.6 multiply
execute if entity @s[tag=skill26_lv2] run attribute @s generic.movement_speed modifier add 0-0-0-3-0026 "skill26" 6.2 multiply
execute if entity @s[tag=skill26_lv3] run attribute @s generic.movement_speed modifier add 0-0-0-3-0026 "skill26" 12.2 multiply


execute if entity @s[tag=skill26_lv1] run tag @s remove skill26_lv1
execute if entity @s[tag=skill26_lv2] run tag @s remove skill26_lv2
execute if entity @s[tag=skill26_lv3] run tag @s remove skill26_lv3

tag @s remove skill26-check