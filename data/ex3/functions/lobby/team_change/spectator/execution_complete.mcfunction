execute at @s run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0.5 0.6 0.5 1 20 force
execute at @s run playsound minecraft:entity.generic.burn master @a ~ ~ ~ 1 1.4
tellraw @s ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"観戦","color":"white","bold":true},{"text":"に参加しました"}]
team leave @s