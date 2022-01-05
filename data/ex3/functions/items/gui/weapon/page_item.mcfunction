


execute if score @s weapon = #item value run tag @s add selecting

function ex3:items/loot/weapon

execute run data modify block 0 0 0 Items[{Slot:0b}].tag.gui_item set value 1
execute run data remove block 0 0 0 Items[{Slot:0b}].tag.weapon
execute if entity @s[tag=selecting] run data modify block 0 0 0 Items[{Slot:0b}].tag.selecting set value 1
execute if entity @s[tag=selecting] run loot replace block 0 0 0 container.1 loot ex3:items/selecting_insert
execute if entity @s[tag=selecting] run data modify block 0 0 0 Items[{Slot:0b}].tag.display.Name set from block 0 0 0 Items[{Slot:1b}].tag.display.Name
execute if entity @s[tag=selecting] run data modify block 0 0 0 Items[{Slot:0b}].tag.Enchantments set value [{}]
execute if entity @s[tag=selecting] run data remove block 0 0 0 Items[{Slot:0b}].tag.selecting
execute if entity @s[tag=selecting] if data block 0 0 0 Items[{Slot:1b}] run data remove block 0 0 0 Items[{Slot:1b}]
execute store result block 0 0 0 Items[{Slot:0b}].Slot byte 1 run scoreboard players get #item value2
tag @s[tag=selecting] remove selecting

scoreboard players reset #item

