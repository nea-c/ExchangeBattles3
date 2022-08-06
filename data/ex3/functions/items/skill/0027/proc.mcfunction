#スキル27

scoreboard players operation #- number = @s number
execute as @a[scores={max_health=0..}] if score @s number = #- number run tag @s add skill27-owner
scoreboard players reset #-

scoreboard players add @s value 1
execute if entity @a[tag=skill27-owner,limit=1] as @a[tag=skill27-owner] run tp @s ~ ~ ~ ~ ~
execute if entity @a[tag=skill27-owner,limit=1] run summon area_effect_cloud ~ ~1 ~ {Radius:0f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:25,Amplifier:0,Duration:2,ShowIcon:0b,ShowParticles:0b}]}

particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0.4 0.4 0.4 1 5 force @a

execute if entity @s[scores={value=2..},nbt={OnGround:1b}] run tag @s add end--
execute if score @s value matches 41.. run tag @s add end--

execute if entity @s[tag=end--] if entity @a[tag=skill27-owner,limit=1] as @a[tag=skill27-owner] run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=end--] if entity @a[tag=skill27-owner,limit=1] run kill @s


execute if entity @a[tag=skill27-owner,limit=1] as @a[tag=skill27-owner] run tag @s remove skill27-owner
