#盲目で行われる処理を無効化するためのタグを付与する処理

scoreboard players operation #- number = @s number
execute as @a if score @s number = #- number run tag @s add not-blind-owner

execute if entity @a[tag=not-blind-owner,scores={max_health=0..},limit=1] as @a[tag=not-blind-owner,scores={max_health=0..}] run tag @s add not-blind-now

execute if entity @a[tag=not-blind-owner,limit=1] run scoreboard players remove @s value 1
execute if score @s value matches 0 run kill @s

execute if entity @a[tag=not-blind-owner,scores={max_health=0..},limit=1] as @a[tag=not-blind-owner,scores={max_health=0..}] run tag @s remove not-blind-owner
scoreboard players reset #-


