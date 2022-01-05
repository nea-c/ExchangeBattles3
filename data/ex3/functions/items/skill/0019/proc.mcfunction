#スキル19
scoreboard players add @s value 1

execute if score @s value matches 160.. run tag @s add end--
execute if entity @s[tag=wall_center,tag=end--] run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 0.7
execute if entity @s[tag=end--] if entity @s[type=shulker] run particle block smooth_stone ~ ~0.5 ~ 0.2 0.2 0.2 0 2 force
execute if entity @s[tag=end--] run tp @s ~ ~-512 ~
execute if entity @s[tag=end--] run kill @s
