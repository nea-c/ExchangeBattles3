#起爆装置使用時処理
tag @e[type=minecraft:creeper,tag=skill10-bomb] add hit1
scoreboard players operation #- number = @s number
execute as @e[tag=hit1] if score @s number = #- number run tag @s add fuse_check1

execute if entity @e[type=minecraft:creeper,tag=skill10-bomb,tag=fuse_check1] at @s run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 2
execute unless entity @e[type=minecraft:creeper,tag=skill10-bomb,tag=fuse_check1] at @s run playsound minecraft:entity.generic.burn master @a ~ ~ ~ 1 2

execute at @s as @e[type=minecraft:creeper,tag=skill10-bomb,tag=fuse_check1,sort=nearest,limit=1] run tag @s add fuse

execute at @e[type=minecraft:creeper,tag=skill10-bomb,tag=fuse,limit=1] run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 2

execute as @e[type=minecraft:creeper,tag=skill10-bomb,tag=fuse,limit=1] at @s run function ex3:items/skill/0010/fuse

#execute as @e[type=minecraft:creeper,tag=skill10-bomb,tag=fuse] run data merge entity @s {Fuse:0s}

execute if entity @e[type=minecraft:creeper,tag=skill10-bomb,tag=fuse_check1,limit=1] as @e[type=minecraft:creeper,tag=skill10-bomb,tag=fuse_check1] run tag @s remove fuse_check1
execute if entity @e[type=minecraft:creeper,tag=skill10-bomb,tag=hit1,limit=1] as @e[type=minecraft:creeper,tag=skill10-bomb,tag=hit1] run tag @s remove hit1

scoreboard players reset #-