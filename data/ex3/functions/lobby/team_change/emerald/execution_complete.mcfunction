execute at @s run particle minecraft:dust 0 1 0 1 ~ ~1 ~ 0.5 0.6 0.5 1 20 force
execute at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.1
tellraw @s ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"エメラルドチーム","color":"green","bold":true},{"text":"に参加しました"}]
team join emerald @s