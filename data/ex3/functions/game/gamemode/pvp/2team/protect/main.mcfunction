#プロテクト処理

execute if entity @a[team=emerald,scores={max_health=0..},limit=1] as @a[team=emerald,scores={max_health=0..}] if score @s number = #emerald number run tag @s add king
execute if entity @a[team=purpur,scores={max_health=0..},limit=1] as @a[team=purpur,scores={max_health=0..}] if score @s number = #purpur number run tag @s add king

scoreboard players operation #emerald value = @a[team=emerald,tag=king] health_display
scoreboard players operation #purpur value = @a[team=purpur,tag=king] health_display

execute if entity @a[tag=king,limit=1] as @a[tag=king] run effect give @s minecraft:glowing 1 0 true


execute unless entity @a[tag=king,team=emerald,limit=1] run scoreboard players set #emerald value 0
execute unless entity @a[tag=king,team=purpur,limit=1] run scoreboard players set #purpur value 0

execute if score #emerald value matches 0 run scoreboard players reset #timer
execute if score #purpur value matches 0 run scoreboard players reset #timer
execute unless score #timer value matches 1 run function ex3:game/end/judge
