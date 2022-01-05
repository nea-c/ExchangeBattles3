#矢
clear @s arrow

execute if score @s arrow matches 1.. run data modify block 0 0 0 Items[{Slot:0b}] merge value {id:"minecraft:arrow",Count:1b,tag:{HideFlags:61,arrow_type:0b,CustomModelData:1001,display:{Name:'["",{"text":"矢","italic":false,"color":"white"}]',Lore:['{"text":"--------------------------------","italic":false,"color":"gray"}','{"text":"弓、またはクロスボウを","italic":false,"color":"white"}','{"text":"素早く2回ドロップでリロードする","italic":false,"color":"white"}','{"text":"--------------------------------","italic":false,"color":"gray"}']}}}
execute if score @s arrow matches 1.. store result block 0 0 0 Items[0].Count int 1 run scoreboard players get @s arrow

execute unless data entity @s Inventory[{Slot:0b}] unless score #slot_pos value = #slot_pos value run scoreboard players set #slot_pos value 0
execute unless data entity @s Inventory[{Slot:1b}] unless score #slot_pos value = #slot_pos value run scoreboard players set #slot_pos value 1
execute unless data entity @s Inventory[{Slot:2b}] unless score #slot_pos value = #slot_pos value run scoreboard players set #slot_pos value 2
execute unless data entity @s Inventory[{Slot:3b}] unless score #slot_pos value = #slot_pos value run scoreboard players set #slot_pos value 3
execute unless data entity @s Inventory[{Slot:4b}] unless score #slot_pos value = #slot_pos value run scoreboard players set #slot_pos value 4
execute unless data entity @s Inventory[{Slot:5b}] unless score #slot_pos value = #slot_pos value run scoreboard players set #slot_pos value 5
execute unless data entity @s Inventory[{Slot:6b}] unless score #slot_pos value = #slot_pos value run scoreboard players set #slot_pos value 6
execute unless data entity @s Inventory[{Slot:7b}] unless score #slot_pos value = #slot_pos value run scoreboard players set #slot_pos value 7
execute unless data entity @s Inventory[{Slot:8b}] unless score #slot_pos value = #slot_pos value run scoreboard players set #slot_pos value 8
execute unless data entity @s Inventory[{Slot:-106b}] unless score #slot_pos value = #slot_pos value run scoreboard players set #slot_pos value -106

execute unless score @s arrow matches 1.. run scoreboard players reset #slot_pos

function ex3:items/loot/end