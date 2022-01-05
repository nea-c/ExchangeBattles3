#スキル27
execute if score @s skill1 matches 27 run tag @s add skill1_use
execute if score @s skill2 matches 27 run tag @s add skill2_use
execute if score @s skill3 matches 27 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0027
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk



execute positioned 0.0 0.0 0.0 run summon marker ^ ^ ^-1 {Tags:["skill27-dummy","this2"]}
summon armor_stand ~ ~ ~ {Tags:["skill27-back","this","fixed","death-owner-end"],Invisible:1b}
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=this] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this,limit=1] number = @s number
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=this2,limit=1] Pos
kill @e[tag=this2]
tag @e[tag=this] remove this


playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 3 0

