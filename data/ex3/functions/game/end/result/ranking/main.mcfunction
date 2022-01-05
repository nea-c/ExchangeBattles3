execute if score #result value matches 1.. run scoreboard players operation #result value2 = #result value
scoreboard players add #result value2 1
scoreboard players set #result total_point 0
scoreboard players operation #result total_point > @a[scores={total_point=1..}] total_point
execute as @a[scores={total_point=1..}] if score @s total_point = #result total_point run tag @s add ranked
execute as @a[tag=ranked] run function ex3:game/end/result/ranking/rank
execute unless score #result value matches 5.. if entity @a[scores={total_point=1..},limit=1] run function ex3:game/end/result/ranking/main