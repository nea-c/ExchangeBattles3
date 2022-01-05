execute at @s run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.5 0.6 0.5 1 20 force
execute at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 1 1.8
tellraw @s ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"プルプァチーム","color":"light_purple","bold":true},{"text":"に参加しました"}]
team join purpur @s