#スキル17
scoreboard players operation #- number = @s number
execute as @e[tag=skill17-stand] if score @s number = #- number run tag @s add hit
scoreboard players reset #-

#scoreboard players operation @s damage_resist = @e[tag=hit] damage_resist
#execute if score @s damage_resist matches 1.. run tag @s add magic
gamemode adventure @s
execute at @s run teleport @s @s
execute at @e[tag=hit] run teleport @s ~ ~ ~ ~ ~
execute at @e[tag=hit] run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 1.6
execute at @e[tag=hit] run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1


tp @e[tag=hit] ~ ~-512 ~
kill @e[tag=hit]
tag @e[tag=hit] remove hit