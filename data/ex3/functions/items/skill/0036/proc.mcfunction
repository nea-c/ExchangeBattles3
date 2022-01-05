scoreboard players add @s value 1

particle dragon_breath ~ ~0.4 ~ 0.2 0.2 0.2 0 1

scoreboard players operation #tmp number = @s number
scoreboard players operation #tmp team_number = @s team_number

execute as @e[scores={max_health=0..},distance=..2] unless score @s team_number = #tmp team_number run tag @s add hit
execute as @a[tag=hit,gamemode=spectator] run tag @s remove hit

execute as @e[tag=hit] run effect give @s wither 2 2
execute as @e[tag=hit,nbt={HurtTime:10s}] run scoreboard players operation @s hurt_by = #tmp number
execute as @e[tag=hit,nbt={HurtTime:10s}] run scoreboard players set @s damage_source 30036
execute as @e[tag=hit] run tag @s remove hit

scoreboard players reset #tmp

execute if score @s value matches 201.. run tag @s add end--
execute if entity @s[tag=end--] run kill @s