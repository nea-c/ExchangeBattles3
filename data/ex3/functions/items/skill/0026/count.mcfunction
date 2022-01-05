scoreboard players operation #- number = @s number
execute as @e[tag=skill26-count] if score @s number = #- number run tag @s add now-skill26-count
#unless entity @e[tag=now-skill26-count]
execute unless entity @e[tag=now-skill26-count,limit=1] at @s run summon marker 0 0 0 {Tags:["skill26-count","this","skill26-counted"]}
execute unless entity @e[tag=now-skill26-count,limit=1] run scoreboard players operation @e[tag=this,limit=1] number = @s number
execute unless entity @e[tag=now-skill26-count,limit=1] run tag @e[tag=this] remove this

execute as @e[tag=skill26-count] if score @s number = #- number run tag @s add now-skill26-count
#if entity @e[tag=now-skill26-count]
execute if entity @e[tag=now-skill26-count,limit=1] run scoreboard players add @e[tag=now-skill26-count] value 1
execute if entity @e[tag=now-skill26-count,limit=1] run tag @s[tag=!skill26-check] add skill26-check
execute if entity @e[tag=now-skill26-count,limit=1,scores={value=1}] run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 1
execute if entity @e[tag=now-skill26-count,limit=1,scores={value=1}] run tag @s add skill26_lv1
execute if entity @e[tag=now-skill26-count,limit=1,scores={value=21}] run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 1
execute if entity @e[tag=now-skill26-count,limit=1,scores={value=21}] run tag @s add skill26_lv2
execute if entity @e[tag=now-skill26-count,limit=1,scores={value=41}] run playsound minecraft:block.lever.click master @a ~ ~ ~ 1 1
execute if entity @e[tag=now-skill26-count,limit=1,scores={value=41}] run tag @s add skill26_lv3
execute if entity @e[tag=now-skill26-count,limit=1] run tag @e[tag=now-skill26-count] add skill26-counted

scoreboard players reset #-