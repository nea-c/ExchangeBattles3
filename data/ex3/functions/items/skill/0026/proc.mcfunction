#スキル26

scoreboard players operation #- number = @s number
execute as @a[scores={max_health=0..}] if score @s number = #- number run tag @s add skill26-owner

execute if entity @a[tag=skill26-owner,gamemode=!spectator,limit=1] at @a[tag=skill26-owner,gamemode=!spectator] run particle minecraft:cloud ~ ~ ~ 0.2 0.5 0.2 0.05 1 force

scoreboard players add @s value 1
execute if score @s value matches 5 run tag @s add end--

execute if entity @s[tag=end--] if entity @a[tag=skill26-owner,limit=1] as @a[tag=skill26-owner] run attribute @s generic.movement_speed modifier remove 0-0-0-3-0026
execute if entity @s[tag=end--] if entity @a[tag=skill26-owner,limit=1] run kill @s

execute if entity @a[tag=skill26-owner,limit=1] as @a[tag=skill26-owner] run tag @s remove skill26-owner

scoreboard players reset #-