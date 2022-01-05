


execute if score @s skill1 = #item value run tag @s add selecting
execute if score @s skill2 = #item value run tag @s add selecting
execute if score @s skill3 = #item value run tag @s add selecting

execute if score #item tab matches 1.. if entity @s[tag=selecting] run tag @s remove selecting
execute if score #item tab matches 1 run data modify block 0 0 0 Items[{Slot:0b}] merge value {id:"light_blue_stained_glass_pane",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"スロット1","italic":false,"color":"yellow"}'},CustomModelData:31}}
execute if score #item tab matches 1 if score @s skill1 = #item value run tag @s add selecting
execute if score #item tab matches 2 run data modify block 0 0 0 Items[{Slot:0b}] merge value {id:"light_blue_stained_glass_pane",Count:2b,tag:{gui_item:1,display:{Name:'{"text":"スロット2","italic":false,"color":"yellow"}'},CustomModelData:32}}
execute if score #item tab matches 2 if score @s skill2 = #item value run tag @s add selecting
execute if score #item tab matches 3 run data modify block 0 0 0 Items[{Slot:0b}] merge value {id:"light_blue_stained_glass_pane",Count:3b,tag:{gui_item:1,display:{Name:'{"text":"スロット3","italic":false,"color":"yellow"}'},CustomModelData:33}}
execute if score #item tab matches 3 if score @s skill3 = #item value run tag @s add selecting
execute if score #item tab matches 4 run data modify block 0 0 0 Items[{Slot:0b}] merge value {id:"barrier",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"戻る","italic":false,"color":"red"}'},CustomModelData:1}}

execute unless score #item tab matches 1.. run function ex3:items/loot/skill

data modify block 0 0 0 Items[{Slot:0b}].tag.gui_item set value 1
data remove block 0 0 0 Items[{Slot:0b}].tag.skill
data remove block 0 0 0 Items[{Slot:0b}].tag.cooltime
execute if entity @s[tag=selecting] run data modify block 0 0 0 Items[{Slot:0b}].tag.selecting set value 1
execute if entity @s[tag=selecting,tag=select_page] run loot replace block 0 0 0 container.1 loot ex3:items/selecting_insert
execute if score #item tab matches 1.. if entity @s[tag=selecting,tag=select_page] run data modify block 0 0 0 Items[{Slot:0b}].id set value blue_stained_glass_pane
execute if entity @s[tag=selecting,tag=!select_page] if score @s skill1 = #item value run loot replace block 0 0 0 container.1 loot ex3:items/skill/slot1_selecting_insert
execute if entity @s[tag=selecting,tag=!select_page] if score @s skill2 = #item value run loot replace block 0 0 0 container.1 loot ex3:items/skill/slot2_selecting_insert
execute if entity @s[tag=selecting,tag=!select_page] if score @s skill3 = #item value run loot replace block 0 0 0 container.1 loot ex3:items/skill/slot3_selecting_insert
execute if entity @s[tag=selecting] run data modify block 0 0 0 Items[{Slot:0b}].tag.display.Name set from block 0 0 0 Items[{Slot:1b}].tag.display.Name
execute if entity @s[tag=selecting] run data modify block 0 0 0 Items[{Slot:0b}].tag.Enchantments set value [{}]
execute if entity @s[tag=selecting] run data remove block 0 0 0 Items[{Slot:0b}].tag.selecting
execute if entity @s[tag=selecting] if data block 0 0 0 Items[{Slot:1b}] run data remove block 0 0 0 Items[{Slot:1b}]
execute store result block 0 0 0 Items[{Slot:0b}].Slot byte 1 run scoreboard players get #item value2
tag @s[tag=selecting] remove selecting

scoreboard players reset #item

