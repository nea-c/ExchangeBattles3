#スキル4

scoreboard players operation #- number = @s number
execute as @a[scores={max_health=0..}] if score @s number = #- number run tag @s add skill4-owner

execute if entity @a[tag=skill4-owner,gamemode=!spectator,limit=1] as @a[tag=skill4-owner,gamemode=!spectator] at @s run particle minecraft:instant_effect ~ ~1 ~ 0.2 0.4 0.2 0.05 1 force
execute if entity @a[tag=skill4-owner,limit=1] as @a[tag=skill4-owner] run tag @s add skill4-now


scoreboard players add @s value 1
execute if score @s value matches 141 run kill @s


execute if entity @a[tag=skill4-owner,limit=1] as @a[tag=skill4-owner] run tag @s remove skill4-owner

scoreboard players reset #-
