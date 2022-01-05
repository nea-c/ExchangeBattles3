
scoreboard players operation #result-point total_dealt = @s total_dealt
scoreboard players operation #result-point total_kill = @s total_kill
scoreboard players operation #result-point total_death = @s total_death

scoreboard players operation #result-point total_kill *= #2 value
scoreboard players operation #result-point total_death *= #3 value
scoreboard players add #result-point total_kill 3
scoreboard players operation #result-point total_kill -= #result-point total_death
scoreboard players operation #result-point total_dealt *= #result-point total_kill

scoreboard players operation @s total_point = #result-point total_dealt
#tellraw @s {"score":{"name": "@s","objective": "total_point"}}
scoreboard players reset #result-point