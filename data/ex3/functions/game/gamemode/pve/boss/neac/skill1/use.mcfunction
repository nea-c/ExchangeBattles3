scoreboard players set @s skill1_ct 170
tag @s add usedskill
data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0d
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 0.7
particle minecraft:witch ~ ~1 ~ 0.2 0.2 0.2 0.4 10 force
summon bat ~ ~ ~ {Tags:["this","op-perforate"],Silent:1b,Invulnerable:1b,DeathTime:5000}
summon bat ~ ~ ~ {Tags:["this","op-perforate"],Silent:1b,Invulnerable:1b,DeathTime:5100}
summon bat ~ ~ ~ {Tags:["this","op-perforate"],Silent:1b,Invulnerable:1b,DeathTime:5200}
summon bat ~ ~ ~ {Tags:["this","op-perforate"],Silent:1b,Invulnerable:1b,DeathTime:5300}
summon bat ~ ~ ~ {Tags:["this","op-perforate"],Silent:1b,Invulnerable:1b,DeathTime:5400}
execute if score #boss-skill health matches ..66 run summon bat ~ ~ ~ {Tags:["this","op-perforate"],Silent:1b,Invulnerable:1b,DeathTime:5500}
execute if score #boss-skill health matches ..66 run summon bat ~ ~ ~ {Tags:["this","op-perforate"],Silent:1b,Invulnerable:1b,DeathTime:5600}
execute if score #boss-skill health matches ..66 run summon bat ~ ~ ~ {Tags:["this","op-perforate"],Silent:1b,Invulnerable:1b,DeathTime:5700}
execute if score #boss-skill health matches ..66 run summon bat ~ ~ ~ {Tags:["this","op-perforate"],Silent:1b,Invulnerable:1b,DeathTime:5800}
execute if score #boss-skill health matches ..66 run summon bat ~ ~ ~ {Tags:["this","op-perforate"],Silent:1b,Invulnerable:1b,DeathTime:5900}
scoreboard players operation @e[tag=this] team_number = @s team_number
execute as @e[tag=this] store result score @s tab run data get entity @s DeathTime 0.01
execute as @e[tag=this] run scoreboard players set @s value 0
execute if score #boss-skill health matches ..66 as @e[tag=this] run scoreboard players set @s value 5
execute if score #boss-skill health matches ..33 as @e[tag=this] run scoreboard players set @s value 10
execute if score #difficulty value matches 1 run scoreboard players remove @e[tag=this] value 20
execute if score #difficulty value matches 3 run scoreboard players add @e[tag=this] value 5
execute if score #difficulty value matches 4 run scoreboard players add @e[tag=this] value 5
tag @e[tag=this] remove this