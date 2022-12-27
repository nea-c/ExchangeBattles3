
execute at @e[tag=now,limit=1,sort=nearest] facing entity @s feet run function ex3:general/get_distance/air-check/0

scoreboard players set #skill34 skill1_ct 3
scoreboard players operation #skill34 skill1_ct *= #distance value
scoreboard players set #skill34 value 182
scoreboard players operation #skill34 value -= #skill34 skill1_ct
execute if score #distance value matches ..-1 run scoreboard players set #skill34 value 0
execute if score #skill34 value matches 141.. run scoreboard players set #skill34 value 140


scoreboard players operation #- damage_resist = #skill34 value



execute if entity @s[type=player] at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["this"]}
execute if entity @e[tag=this,limit=1] as @e[tag=this] at @s facing entity @e[tag=now,limit=1,sort=nearest] feet rotated ~180 ~ run tp @s ~ ~ ~ ~ ~
execute if entity @e[tag=this,limit=1] as @e[tag=this] store result score #rot value run data get entity @s Rotation[0] 100
execute if entity @e[tag=this,limit=1] as @e[tag=this] store result score #rot value2 run data get entity @s Rotation[1] 100
execute if entity @e[tag=this,limit=1] run scoreboard players operation #rot value2 *= #-1 value
execute if score #skill34 value matches 1.. if entity @s[type=player] run function ex3:general/shield/guard/check
execute if entity @s[type=player] run scoreboard players reset #rot
execute if entity @s[type=player] run scoreboard players reset #p-rot
execute if entity @s[type=player] run kill @e[tag=this]

execute if score #skill34 value matches 1.. if entity @s[tag=!shield-guard] run tp @s @s

execute if score #skill34 value matches 1.. if entity @s[type=!player] run data remove entity @s Motion
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["0034D"],Duration:1}
summon minecraft:area_effect_cloud ~ ~-20 ~ {Tags:["0034D"],Duration:1}

execute if score #skill34 value matches 1.. if entity @s[tag=!shield-guard] as @s at @e[tag=0034D,limit=2] at @e[tag=0034D,limit=2] at @e[tag=0034D,limit=2] at @e[tag=0034D,limit=2] at @e[tag=0034D,limit=2] at @e[tag=0034D,limit=2] at @s facing entity @e[tag=0034D,limit=1,sort=nearest] feet rotated ~ 0 run summon minecraft:slime ^ ^ ^0.2 {Size:0,NoAI:1b,DeathTime:16s,Silent:1b,Tags:["kill1tick","no_entity"],ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}]}
execute if score #skill34 value matches 1.. if entity @s[tag=!shield-guard] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"dust 0 0 0 0",Radius:0f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:25,Amplifier:10b,Duration:4,ShowIcon:0b,ShowParticles:0b}]}

execute if score #skill34 value matches 1.. if entity @s[tag=shield-guard] as @s at @e[tag=0034D,limit=2] at @e[tag=0034D,limit=2] at @e[tag=0034D,limit=2] at @s facing entity @e[tag=0034D,limit=1,sort=nearest] feet rotated ~ 0 run summon minecraft:slime ^ ^ ^0.2 {Size:0,NoAI:1b,DeathTime:16s,Silent:1b,Tags:["kill1tick","no_entity"],ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}]}
execute if score #skill34 value matches 1.. if entity @s[tag=shield-guard] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"dust 0 0 0 0",Radius:0f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:25,Amplifier:5b,Duration:4,ShowIcon:0b,ShowParticles:0b}]}


execute if score #skill34 value matches 1.. run tag @s add magic
execute if score #skill34 value matches 1.. run scoreboard players operation @s hurt_by = @e[tag=now,limit=1,sort=nearest] number
execute if score #skill34 value matches 1.. run scoreboard players set @s damage_source 30034
execute if score #skill34 value matches 1.. run scoreboard players operation @s damage_resist = #- damage_resist

execute if score #skill34 value matches 1.. run function ex3:general/health_proc/damage/calc

#tag @s add knockback-disabled
tag @s remove hit

scoreboard players reset #distance