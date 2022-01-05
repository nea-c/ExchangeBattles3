#スキル20
execute if score @s skill1 matches 21 run tag @s add skill1_use
execute if score @s skill2 matches 21 run tag @s add skill2_use
execute if score @s skill3 matches 21 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0021
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]


playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 0.5
particle minecraft:block iron_block ~ ~1 ~ 1.1 0.5 1.1 0 50 force


scoreboard players operation #- team_number = @s team_number

execute as @a[scores={max_health=0..},distance=..4] if score @s team_number = #- team_number run tag @s add guard_fort_target


scoreboard players reset #-


execute store result score #s_player value if entity @a[tag=guard_fort_target]
execute if entity @s[tag=skill1_use] run scoreboard players operation #ct value *= #s_player value
execute if entity @s[tag=skill2_use] run scoreboard players operation #ct value *= #s_player value
execute if entity @s[tag=skill3_use] run scoreboard players operation #ct value *= #s_player value

execute if score #s_player value matches 1 as @a[tag=guard_fort_target,tag=!skill2-melt_now] run effect give @s luck 7 1
execute if score #s_player value matches 2 as @a[tag=guard_fort_target,tag=!skill2-melt_now] run effect give @s luck 7 2
execute if score #s_player value matches 3 as @a[tag=guard_fort_target,tag=!skill2-melt_now] run effect give @s luck 7 3
execute if score #s_player value matches 4 as @a[tag=guard_fort_target,tag=!skill2-melt_now] run effect give @s luck 7 4
execute if score #s_player value matches 5 as @a[tag=guard_fort_target,tag=!skill2-melt_now] run effect give @s luck 7 5
execute if score #s_player value matches 6 as @a[tag=guard_fort_target,tag=!skill2-melt_now] run effect give @s luck 7 6
execute if score #s_player value matches 7.. as @a[tag=guard_fort_target,tag=!skill2-melt_now] run effect give @s luck 7 7

execute if entity @a[tag=guard_fort_target,limit=1] as @a[tag=guard_fort_target] run tag @s remove guard_fort_target


scoreboard players reset #s_player
execute if entity @s run function ex3:items/skill/bulk


