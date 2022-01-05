#スキルP
execute unless data entity @s Inventory[{Slot:11b}].tag{gui_item:1} run scoreboard players set #itemB value -2
execute unless data entity @s Inventory[{Slot:12b}].tag{gui_item:1} run scoreboard players set #itemB value -3
execute unless data entity @s Inventory[{Slot:13b}].tag{gui_item:1} run scoreboard players set #itemB value -4
execute unless data entity @s Inventory[{Slot:14b}].tag{gui_item:1} run scoreboard players set #itemB value -5
execute unless data entity @s Inventory[{Slot:15b}].tag{gui_item:1} run scoreboard players set #itemB value -6

execute unless data entity @s Inventory[{Slot:31b}].tag{gui_item:1} run scoreboard players set #itemB value 0
execute unless data entity @s Inventory[{Slot:23b}].tag{gui_item:1} run scoreboard players set #itemB value 2
execute unless data entity @s Inventory[{Slot:21b}].tag{gui_item:1} run scoreboard players set #itemB value 1

scoreboard players operation #exstorage value = @s tab
scoreboard players operation #exstorage value %= #10000 value

execute if score #exstorage value matches 1 if data entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:8b}] run tag @s add saved
execute if score #exstorage value matches 2 if data entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:17b}] run tag @s add saved
execute if score #exstorage value matches 3 if data entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:26b}] run tag @s add saved

execute if score #itemB value matches -6..-2 if entity @s[tag=saved] run tag @s add gui_change
execute if score #itemB value matches -6..-2 run scoreboard players reset #itemB value

execute if score #itemB value matches 0 run tag @s add select--
execute if entity @s[tag=select--] at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
execute if entity @s[tag=select--] run tag @s add gui_change
execute if entity @s[tag=select--] run tag @s remove select--


execute if score #itemB value matches 1 run tag @s add select--
execute if entity @s[tag=select--] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
execute if entity @s[tag=select--] run function ex3:items/gui/close/exstorage/save_proc
execute if entity @s[tag=select--] run tag @s add gui_change
execute if entity @s[tag=select--] run tag @s remove select--

execute if score #itemB value matches 2 if entity @s[tag=saved] run tag @s add select--
execute if entity @s[tag=select--] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
execute if entity @s[tag=select--] run function ex3:items/gui/close/exstorage/load_proc
execute if entity @s[tag=select--] run tag @s add gui_change
execute if entity @s[tag=select--] run tag @s add skill_no_drop
execute if entity @s[tag=select--] run scoreboard players set @s drop 1
execute if entity @s[tag=select--] run tag @s remove select--

execute if score #itemB value matches 2 if entity @s[tag=!saved] run tag @s add select--
execute if entity @s[tag=select--] at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 1 1
execute if entity @s[tag=select--] run tag @s add gui_change
execute if entity @s[tag=select--] run scoreboard players reset #itemB
execute if entity @s[tag=select--] run tag @s remove select--


execute if score #itemB value matches 0..2 unless score #itemB value matches 1 run scoreboard players set @s tab 5

execute if entity @s[tag=saved] run tag @s remove saved
scoreboard players reset #itemB
scoreboard players reset #exstorage
