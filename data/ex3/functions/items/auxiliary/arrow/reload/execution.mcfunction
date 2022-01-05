#リロード実行
clear @s minecraft:arrow
scoreboard players set @s arrow 0
execute at @s run playsound minecraft:block.chest.locked master @s ~ ~ ~ 10 0.7
execute unless score #display_game_title value matches 1 run title @s times 0 100 0
execute unless score #display_game_title value matches 1 run title @s title ["",{"text":""}]
execute unless score #display_game_title value matches 1 run title @s subtitle ["",{"text":"Reloading","bold":true,"color":"dark_green"}]

summon marker 0 0 0 {Tags:["arrow-reload-time","this","fixed"]}
scoreboard players operation @e[tag=this] number = @s number
