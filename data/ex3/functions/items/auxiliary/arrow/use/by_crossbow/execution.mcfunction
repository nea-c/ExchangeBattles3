#クロスボウ使用時の矢のnbt変更



execute if score #has_item value matches 10005 if entity @s[tag=weapon5_charged,tag=!weapon5_charged-r] as @e[tag=setup] store result entity @s damage double 0.01 run data get entity @s damage 65
execute if score #has_item value matches 10005 if entity @s[tag=weapon5_charged,tag=weapon5_charged-r] as @e[tag=setup] store result entity @s Motion[0] double 0.01 run data get entity @s Motion[0] 120
execute if score #has_item value matches 10005 if entity @s[tag=weapon5_charged,tag=weapon5_charged-r] as @e[tag=setup] store result entity @s Motion[1] double 0.01 run data get entity @s Motion[1] 120
execute if score #has_item value matches 10005 if entity @s[tag=weapon5_charged,tag=weapon5_charged-r] as @e[tag=setup] store result entity @s Motion[2] double 0.01 run data get entity @s Motion[2] 120
execute if score #has_item value matches 10005 if entity @s[tag=weapon5_charged,tag=weapon5_charged-r] as @e[tag=setup] run data merge entity @s {PierceLevel:1b}
execute if score #has_item value matches 10005 if entity @s[tag=weapon5_charged,tag=weapon5_charged-r] as @e[tag=setup] run tag @s add weapon5--
execute if score #has_item value matches 10005 if entity @s[tag=weapon5_charged,tag=weapon5_charged-r] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.5 2

execute if score #has_item value matches 10005 if entity @s[tag=weapon5_charged] as @e[tag=setup] run tag @s add weapon5
execute if score #has_item value matches 10005 if entity @s[tag=weapon5_charged] as @e[tag=setup,tag=crit] run tag @s remove crit
execute if score #has_item value matches 10005 if entity @s[tag=weapon5_charged] run tag @s add weapon5_change
execute if score #has_item value matches 10005 if entity @s[tag=weapon5_charged] run function ex3:items/weapon/0005/set

execute if score #has_item value matches 10005 if entity @s[tag=weapon5_charged] run tag @s remove weapon5_charged
execute if score #has_item value matches 10005 if entity @s[tag=weapon5_charged-r] run tag @s remove weapon5_charged-r
