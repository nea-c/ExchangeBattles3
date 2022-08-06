#スキル16

scoreboard players add @s value2 1
scoreboard players add @s jump 1
execute unless score @s keep_team matches 1.. run scoreboard players set @s keep_team 1000
execute if score @s tab matches 1 run scoreboard players add @s keep_team 24
execute if score @s tab matches 1.. run scoreboard players set @s tab 0

scoreboard players add @s tab 1

scoreboard players operation #- number = @s number
scoreboard players operation #- team_number = @s team_number


execute as @a unless score @s team_number = #- team_number run particle dust 1 0.5 0 1 ~ ~ ~ 0.05 0.05 0.05 0 2 force @s
execute as @a if score @s team_number = #- team_number run particle dust 0 1 1 1 ~ ~ ~ 0.05 0.05 0.05 0 2 force @s

particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.05 0.05 0.05 0 1 force


teleport @s ~ ~ ~ ~ ~


execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,scores={max_health=0..}] unless score @s team_number = #- team_number run tag @s add hit
execute if entity @e[tag=hit,limit=1] run tag @s add end--
execute if entity @e[tag=hit,type=player,limit=1] as @a[scores={max_health=0..}] if score @s number = #- number at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 0.6 0.5
execute if entity @e[tag=hit,limit=1] run function ex3:items/skill/0016/hit

scoreboard players reset #-

execute if score @s value2 matches 200.. run tag @s add end--

execute if entity @s[tag=end--] run teleport @s ~ ~-512 ~
execute if entity @s[tag=end--] run kill @s


execute unless entity @s[tag=end--] if score @s jump matches ..4 positioned ^ ^ ^0.5 run function ex3:items/skill/0016/shot
execute unless entity @s[tag=end--] unless score @s jump matches ..4 run playsound minecraft:entity.silverfish.ambient master @a ~ ~ ~ 1 1.4
execute unless entity @s[tag=end--] unless score @s jump matches ..4 run playsound minecraft:entity.silverfish.ambient master @a ~ ~ ~ 1 1.4
execute unless entity @s[tag=end--] unless score @s jump matches ..4 run playsound minecraft:entity.silverfish.ambient master @a ~ ~ ~ 1 1.4
execute unless entity @s[tag=end--] unless score @s jump matches ..4 run scoreboard players set @s jump 0
