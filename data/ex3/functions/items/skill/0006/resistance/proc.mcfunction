#スキル6

scoreboard players operation #- number = @s number
execute as @a[scores={max_health=0..}] if score @s number = #- number run tag @s add skill6-resistance-owner

execute if entity @a[tag=skill6-resistance-owner,gamemode=!spectator,limit=1] at @a[tag=skill6-resistance-owner,gamemode=!spectator] run particle block prismarine ~ ~1 ~ 0.2 0.3 0.2 0 1 force @a

execute if entity @a[tag=skill6-resistance-owner,scores={damage_resist=1..},limit=1] as @a[tag=skill6-resistance-owner,scores={damage_resist=1..}] run tag @s add skill6-resist
execute if entity @a[tag=skill6-resistance-owner,scores={damage_resist=1..},limit=1] run kill @s

execute if entity @a[tag=skill6-resistance-owner,limit=1] as @a[tag=skill6-resistance-owner] run tag @s remove skill6-resistance-owner

scoreboard players add @s value 1
execute if score @s value matches 241 run kill @s


scoreboard players reset #-

