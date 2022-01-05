#スキル32
execute if score @s skill1 matches 32 run tag @s add skill1_use
execute if score @s skill2 matches 32 run tag @s add skill2_use
execute if score @s skill3 matches 32 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0032
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk

playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ .5 2
playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ .3 .8
playsound minecraft:block.anvil.place master @a ~ ~ ~ .5 2

summon marker ~ ~ ~ {Tags:["skill32-sword","this"]}

execute anchored eyes positioned ^ ^ ^ run tp @e[tag=this] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this] number = @s number
scoreboard players operation @e[tag=this] team_number = @s team_number
tag @e[tag=this] remove this

