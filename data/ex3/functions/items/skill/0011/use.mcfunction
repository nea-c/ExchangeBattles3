#スキル11
execute if score @s skill1 matches 11 run tag @s add skill1_use
execute if score @s skill2 matches 11 run tag @s add skill2_use
execute if score @s skill3 matches 11 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0011
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk


playsound block.lantern.place master @a ~ ~ ~ 1 1.2
particle block yellow_stained_glass ~ ~1 ~ 0 0 0 0.2 30
summon blaze ~ ~ ~ {Invulnerable:1b,CustomName:'{"text":"灯火"}',Tags:["fire","this"],NoAI:1b,Silent:1b,Health:10f,Attributes:[{Name:"generic.max_health",Base:10}]}



scoreboard players operation @e[tag=this] number = @s number
scoreboard players operation @e[tag=this] team_number = @s team_number
execute if entity @s[team=ffa] run team join ffa @e[tag=this]
tag @e[tag=this] remove this



scoreboard players operation #- number = @s number

execute if entity @e[type=blaze,tag=fire,limit=1] as @e[type=blaze,tag=fire] if score @s number = #- number run tag @s add fire_count_this
execute if entity @e[type=blaze,tag=fire_count_this,limit=1] as @e[type=blaze,tag=fire_count_this] store result score @s tab run execute if entity @e[type=blaze,tag=fire_count_this]
execute if entity @e[type=blaze,tag=fire_count_this,limit=1] if score @e[type=blaze,tag=fire_count_this,limit=1,sort=random] tab matches 2.. run kill @e[type=blaze,tag=fire_count_this,limit=1,sort=furthest]

scoreboard players reset #-

execute if entity @e[type=blaze,tag=fire_count_this,limit=1] run tag @e[type=blaze,tag=fire_count_this] remove fire_count_this

