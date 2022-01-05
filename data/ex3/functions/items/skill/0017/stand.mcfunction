#スキル17
scoreboard players operation #- team_number = @s team_number
scoreboard players operation #- number = @s number
tag @s add this2
execute as @a unless score @s team_number = #- team_number run particle dust 1 0.5 0 1 ~ ~1 ~ 0.3 0.3 0.3 0 2 force @s
execute as @a if score @s team_number = #- team_number run particle dust 0 1 1 1 ~ ~1 ~ 0.3 0.3 0.3 0 2 force @s

#execute if block ~ ~-0.5 ~ #ex3:like_air run tp @s ~ ~-0.5 ~
execute store result entity @s Rotation[0] float 0.00001 run scoreboard players get @s value
execute store result entity @s Rotation[1] float 0.00001 run scoreboard players get @s value2
execute unless data entity @s ActiveEffects[{Id:24b}] if data entity @s Glowing run data modify entity @s Glowing set value 0b
execute if data entity @s ActiveEffects[{Id:24b}] unless data entity @s Glowing run data modify entity @s Glowing set value 1b
data modify entity @s FallDistance set value 0


scoreboard players add @s tab 1
execute if score @s tab matches 401 as @a[scores={max_health=0..}] if score @s number = #- number run function ex3:items/skill/0017/return

execute if entity @s[scores={damage_resist=1..}] as @a[scores={max_health=0..}] if score @s number = #- number run tag @s add skill17-return
execute if entity @a[tag=skill17-return,limit=1] as @a[tag=skill17-return] run function ex3:items/skill/0017/return
execute if entity @a[tag=skill17-return,limit=1] as @a[tag=skill17-return] run tag @e[tag=skill17-return] remove skill17-return

execute as @a[scores={max_health=0..}] if score @s number = #- number run scoreboard players operation @e[tag=this2] health = @s health
execute as @a[scores={max_health=0..},x_rotation=90] if score @s number = #- number run function ex3:items/skill/0017/return

execute if score @s health matches ..0 run scoreboard players set @s health 1

tag @s remove this2
scoreboard players reset #-