#スキル24
execute if score @s skill1 matches 24 run tag @s add skill1_use
execute if score @s skill2 matches 24 run tag @s add skill2_use
execute if score @s skill3 matches 24 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0024
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk


playsound minecraft:block.bell.resonate master @a ~ ~ ~ 1 2
playsound minecraft:item.totem.use master @a ~ ~ ~ 0.6 2
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 20 force

tag @s add skill24-now
function ex3:general/health_proc/max-set

summon marker 0 0 0 {Tags:["skill24-time","this"]}
scoreboard players operation @e[tag=this] number = @s number
tag @e[tag=this] remove this

scoreboard players operation #health value = @s max_health
scoreboard players operation #health value *= #10 value
scoreboard players operation @s health = #health value
scoreboard players reset #health


summon marker 0 0 0 {Tags:["not-blind-time","this","fixed"]}
scoreboard players operation @e[tag=this] number = @s number
scoreboard players set @e[tag=this] value 20
tag @e[tag=this] remove this
effect give @s blindness 1 0 true

