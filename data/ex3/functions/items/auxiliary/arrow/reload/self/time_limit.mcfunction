#自己リロード実行

scoreboard players operation #- number = @s number
execute as @a if score @s number = #- number run tag @s add reload-check-owner


scoreboard players add @s value 1
execute if score @s value matches 6 run kill @s

execute if entity @a[tag=reload-check-owner,scores={max_health=0..},limit=1] as @a[tag=reload-check-owner,scores={max_health=0..}] run tag @s remove reload-check-owner

scoreboard players reset #-



