#メイン5


#data get entity @s SelectedItem.tag.ChargedProjectiles[].tag.arrow_type

scoreboard players operation #tmp arrow = @s arrow

execute if score @s arrow matches 1 run scoreboard players set #arrow value 1
execute if score @s arrow matches 2.. run scoreboard players set #arrow value 2

execute if score #arrow value matches 1 run scoreboard players remove @s arrow 1
execute if score #arrow value matches 2 run scoreboard players remove @s arrow 2

execute if entity @s[tag=skill35-now] run function ex3:items/skill/0035/crossbow

scoreboard players reset #tmp arrow

execute if score #arrow value matches 1.. run tag @s add weapon5_charged
execute if score #arrow value matches 2 run tag @s add weapon5_charged-r

scoreboard players reset #arrow

function ex3:items/weapon/0005/set

tag @s add weapon5_replace
