#スニーク長押しの進捗用
scoreboard players operation #- number = @s number
execute as @e[tag=general-blindness] if score @s number = #- number run tag @s add blindness-now

#unless entity @e[tag=blindness-now]
execute unless entity @e[tag=blindness-now,limit=1] at @s run summon marker 0 0 0 {Tags:["general-blindness","this","general-blindness-ed"]}
execute unless entity @e[tag=blindness-now,limit=1] run scoreboard players operation @e[tag=this,limit=1] number = @s number
execute unless entity @e[tag=blindness-now,limit=1] run tag @e[tag=this] remove this

execute as @e[tag=general-blindness] if score @s number = #- number run tag @s add blindness-now


execute if entity @e[tag=blindness-now,limit=1] if entity @s[scores={food=..5}] run effect give @s minecraft:saturation 1 0 true
execute if entity @e[tag=blindness-now,limit=1] if entity @s[scores={food=7..}] run effect give @s minecraft:hunger 1 255 true
execute if entity @e[tag=blindness-now,limit=1] run tag @e[tag=blindness-now] add general-blindness-ed

scoreboard players reset #-