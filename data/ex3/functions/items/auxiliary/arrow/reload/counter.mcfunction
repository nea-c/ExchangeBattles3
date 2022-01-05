#リロード処理
scoreboard players operation #- number = @s number
execute as @a if score @s number = #- number run tag @s add arrow-reload-check-owner

scoreboard players remove @s value 1
execute if score @s value matches ..0 if entity @a[tag=arrow-reload-check-owner,limit=1] as @a[tag=arrow-reload-check-owner] run function ex3:items/auxiliary/arrow/reload/complete
execute if score @s value matches ..0 if entity @a[tag=arrow-reload-check-owner,limit=1] run kill @s

execute if entity @a[tag=arrow-reload-check-owner,limit=1] as @a[tag=arrow-reload-check-owner] run tag @s remove arrow-reload-check-owner

scoreboard players reset #-
