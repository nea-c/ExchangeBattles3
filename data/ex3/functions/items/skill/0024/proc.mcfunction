#スキル24


scoreboard players operation #- number = @s number
execute as @a[scores={max_health=0..}] if score @s number = #- number run tag @s add skill24-owner

execute if entity @a[tag=skill24-owner,limit=1] as @a[tag=skill24-owner] run tag @s add skill24-now

scoreboard players add @s value 1
execute if score @s value matches 101 run tag @s add end--

execute if entity @s[tag=end--] if entity @a[tag=skill24-owner,tag=skill24-now,limit=1] as @a[tag=skill24-owner,tag=skill24-now] run tag @s remove skill24-now
execute if entity @s[tag=end--] if entity @a[tag=skill24-owner,limit=1] as @a[tag=skill24-owner] run tag @s add skill24-end
execute if entity @s[tag=end--] if entity @a[tag=skill24-owner,limit=1] as @a[tag=skill24-owner] run scoreboard players set @s health 0
execute if entity @s[tag=end--] if entity @a[tag=skill24-owner,limit=1] run kill @s

execute if entity @a[tag=skill24-owner,limit=1] as @a[tag=skill24-owner] run tag @s remove skill24-owner
scoreboard players reset #-


