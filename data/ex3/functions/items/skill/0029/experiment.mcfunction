#スキル29
data merge storage random: {data:{min:1,max:100.999}}
execute store result score #- value run function ex3:general/random

scoreboard players reset @s value
scoreboard players reset @s value2
scoreboard players reset @s tab
scoreboard players set @s jump 1000

scoreboard players operation #- team_number = @s team_number

execute as @e[scores={max_health=0..},nbt=!{Invulnerable:1b}] unless score @s team_number = #- team_number run tag @s add skill29-target-c


execute if score #- value matches 1..50 run function ex3:items/skill/0029/change
execute if score #- value matches 51..100 run function ex3:items/skill/0029/end

tag @s remove end--

execute if entity @e[tag=skill29-target-c,limit=1] as @e[tag=skill29-target-c] run tag @s remove skill29-target-c