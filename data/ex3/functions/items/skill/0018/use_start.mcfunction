#スキル18

playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 2
particle minecraft:spit ~ ~1 ~ 0.6 0.6 0.6 0.2 10 force
tag @s add elytra
data remove block 0 0 0 Items[]
function ex3:items/skill/0018/elytra_setup
loot replace entity @s armor.chest mine 0 0 0 air{copy:1b}
tag @s add using
scoreboard players set #item value 18
function ex3:items/skill/loot_before
summon marker 0 0 0 {Tags:["skill18-time","this","fixed","death-owner-end"]}
scoreboard players operation @e[tag=this] number = @s number
execute if score @s skill1 matches 18 run tag @e[tag=this] add slot1
execute if score @s skill2 matches 18 run tag @e[tag=this] add slot2
execute if score @s skill3 matches 18 run tag @e[tag=this] add slot3
tag @e[tag=this] remove this
