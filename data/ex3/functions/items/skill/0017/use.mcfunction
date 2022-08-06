#スキル17
execute if score @s skill1 matches 17 run tag @s add skill1_use
execute if score @s skill2 matches 17 run tag @s add skill2_use
execute if score @s skill3 matches 17 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0017
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk


execute at @s run playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 1 1.2
execute at @s run particle minecraft:squid_ink ~ ~1 ~ 0 0.3 0 0.1 10 force


summon minecraft:pillager ~ ~ ~ {CustomName:'{"text":""}',CustomNameVisible:1b,Tags:["skill17-stand","this"],PersistenceRequired:1b,Silent:1b}

execute if entity @s[tag=emit] run tag @e[tag=this] add emit_d
execute if entity @s[tag=emit] run effect give @e[tag=this,limit=1] glowing 1000000 0 true
tp @e[tag=this] ~ ~ ~ ~ ~
loot replace block 0 0 0 container.0 loot ex3:general/player_name

attribute @e[tag=this,limit=1] generic.movement_speed base set 0
attribute @e[tag=this,limit=1] generic.follow_range base set 0
execute as @e[tag=this,limit=1] store result score @s value run data get entity @s Rotation[0] 100000
execute as @e[tag=this,limit=1] store result score @s value2 run data get entity @s Rotation[1] 100000
scoreboard players operation @e[tag=this,limit=1] number = @s number
scoreboard players operation @e[tag=this,limit=1] team_number = @s team_number
scoreboard players operation @e[tag=this,limit=1] health = @s health
scoreboard players operation @e[tag=this,limit=1] max_health = @s max_health
data modify entity @e[tag=this,limit=1] CustomName set from block 0 0 0 Items[0].tag.display.Name
execute if entity @s[team=ffa] run team join ffa @e[tag=this,limit=1]
tag @e[tag=this,limit=1] remove this


gamemode spectator @s
