#メイン6
scoreboard players operation #- number = @s number
execute as @e[tag=weapon6-count] if score @s number = #- number run tag @s add now-weapon6-count
#unless entity @e[tag=now-weapon6-count]
execute unless entity @e[tag=now-weapon6-count,limit=1] at @s run summon marker 0 0 0 {Tags:["weapon6-count","this","weapon6-counted"]}
execute unless entity @e[tag=now-weapon6-count,limit=1] run scoreboard players operation @e[tag=this,limit=1] number = @s number
execute unless entity @e[tag=now-weapon6-count,limit=1] run tag @e[tag=this] remove this

execute as @e[tag=weapon6-count] if score @s number = #- number run tag @s add now-weapon6-count
#if entity @e[tag=now-weapon6-count]
execute if entity @e[tag=now-weapon6-count,limit=1] run scoreboard players add @e[tag=now-weapon6-count] value 1
execute if entity @e[tag=now-weapon6-count,limit=1,scores={value=61}] run function ex3:items/weapon/0006/sneak_effect
execute if entity @e[tag=now-weapon6-count,limit=1] run tag @e[tag=now-weapon6-count] add weapon6-counted
execute if entity @e[tag=now-weapon6-count,limit=1] run tag @e[tag=now-weapon6-count] remove now-weapon6-count

scoreboard players reset #-