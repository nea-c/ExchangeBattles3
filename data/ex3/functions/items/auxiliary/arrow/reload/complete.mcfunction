#リロード処理
scoreboard players operation #max_arrow value = #max_arrow_base value
scoreboard players operation #max_arrow value += @s arrow_add
scoreboard players operation @s arrow = #max_arrow value
scoreboard players reset #max_arrow
execute if entity @s[scores={weapon=4..5}] run tag @s add items_that_use_arrow
execute if entity @s[tag=items_that_use_arrow] run function ex3:items/auxiliary/arrow/set
execute if entity @s[tag=items_that_use_arrow] run tag @s remove items_that_use_arrow
execute unless score #display_game_title value matches 1 at @s run playsound minecraft:entity.villager.work_fletcher master @s ~ ~ ~ 1 1
execute unless score #display_game_title value matches 1 run title @s times 0 10 10
execute unless score #display_game_title value matches 1 run title @s title ["",{"text":""}]
execute unless score #display_game_title value matches 1 run title @s subtitle ["",{"text":"Reload Complete","bold":true,"color":"aqua"}]
