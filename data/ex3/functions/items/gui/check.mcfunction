execute unless data entity @s {Inventory:[{Slot:13b,tag:{gui_item:1}}]} run scoreboard players set #tab value2 5
execute unless data entity @s {Inventory:[{Slot:9b,tag:{gui_item:1}}]} run scoreboard players set #tab value2 1
execute unless data entity @s {Inventory:[{Slot:10b,tag:{gui_item:1}}]} run scoreboard players set #tab value2 2
execute unless data entity @s {Inventory:[{Slot:11b,tag:{gui_item:1}}]} run scoreboard players set #tab value2 3
execute unless data entity @s {Inventory:[{Slot:17b,tag:{gui_item:1}}]} run scoreboard players set #tab value2 9
execute if score #tab value2 matches 5 if score #tab value2 = @s tab run scoreboard players reset #tab value2
execute if score #tab value2 matches 1.. run tag @s add gui_change
execute if score @s tab = #tab value2 run scoreboard players reset #tab value2
execute if score #tab value2 matches 1..3 if score #exchange value matches 0..1 unless score #tab value2 = @s tab at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
execute if score #tab value2 matches 1..3 if score #exchange value matches 2.. at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1 1
execute if score #tab value2 matches 5 unless score #tab value2 = @s tab at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
execute if score #tab value2 matches 9 unless score #tab value2 = @s tab at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
execute if score #tab value2 matches 1..3 if score #exchange value matches 0..1 unless score #tab value2 = @s tab run scoreboard players operation @s tab = #tab value2
execute if score #tab value2 matches 4.. unless score #tab value2 = @s tab run scoreboard players operation @s tab = #tab value2
execute unless score #tab value2 matches 1.. if score @s tab matches 1 run function ex3:items/gui/weapon/check
execute unless score #tab value2 matches 1.. if score @s tab matches 2 run function ex3:items/gui/support/check
execute unless score #tab value2 matches 1.. if score @s tab matches 3 run function ex3:items/gui/skill/check
execute unless score #tab value2 matches 1.. if score @s tab matches 5 run function ex3:items/gui/close/check
execute unless score #tab value2 matches 1.. if score @s tab matches 9 run function ex3:items/gui/radio_chat/check
scoreboard players reset #tab