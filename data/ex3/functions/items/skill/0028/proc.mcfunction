#スキル28

scoreboard players operation #- team_number = @s team_number
execute as @a[scores={max_health=0..}] if score @s team_number = #- team_number run tag @s add skill28-same-team

execute as @a unless score @s team_number = #- team_number run particle dust 1 0.5 0 1 ~ ~1 ~ 0.3 0.3 0.3 0 2 force @s
execute as @a if score @s team_number = #- team_number run particle dust 0 1 1 1 ~ ~1 ~ 0.3 0.3 0.3 0 2 force @s


scoreboard players add @s value 1

execute if score @s value matches 201 run particle smoke ~ ~1 ~ 0 0 0 0.2 20 force @a
execute if score @s value matches 201 run playsound entity.generic.extinguish_fire master @a ~ ~ ~ 1 2
execute if score @s value matches 201.. run tag @s add skill28-end


scoreboard players operation #- number = @s number
execute as @e[tag=skill28-pointer] if score @s number = #- number run tag @s add skill28-same-pointer

execute if entity @s[tag=skill28-end] run tag @e[tag=skill28-same-pointer,distance=..0.1,sort=nearest,limit=1] add skill28-end

execute as @e[tag=skill28-same-pointer] run tag @s remove skill28-same-pointer

execute as @e[tag=skill28-end] run kill @s


scoreboard players reset #-