#スキルP
execute unless score @s close_page matches 1 unless data entity @s Inventory[{Slot:35b}].tag{gui_item:1} run scoreboard players set #item value 18
execute unless score @s close_page matches 1 unless data entity @s Inventory[{Slot:34b}].tag{gui_item:1} run scoreboard players set #item value 17
execute unless data entity @s Inventory[{Slot:33b}].tag{gui_item:1} run scoreboard players set #item value 16
execute unless score @s close_page matches 1 unless data entity @s Inventory[{Slot:32b}].tag{gui_item:1} run scoreboard players set #item value 15
execute unless data entity @s Inventory[{Slot:31b}].tag{gui_item:1} run scoreboard players set #item value 14
execute unless score @s close_page matches 1 unless data entity @s Inventory[{Slot:30b}].tag{gui_item:1} run scoreboard players set #item value 13
execute unless data entity @s Inventory[{Slot:29b}].tag{gui_item:1} run scoreboard players set #item value 12
execute unless score @s close_page matches 1 unless data entity @s Inventory[{Slot:28b}].tag{gui_item:1} run scoreboard players set #item value 11
execute unless score @s close_page matches 1 unless data entity @s Inventory[{Slot:27b}].tag{gui_item:1} run scoreboard players set #item value 10
execute unless score @s close_page matches 1 unless data entity @s Inventory[{Slot:26b}].tag{gui_item:1} run scoreboard players set #item value 9
execute unless data entity @s Inventory[{Slot:25b}].tag{gui_item:1} run scoreboard players set #item value 8
execute unless score @s close_page matches 1 unless data entity @s Inventory[{Slot:24b}].tag{gui_item:1} run scoreboard players set #item value 7

execute if score @s close_page matches 1 unless data entity @s Inventory[{Slot:23b}].tag{gui_item:1} if score #playing value matches 0 run scoreboard players set #item value 6
execute unless score @s close_page matches 1 unless data entity @s Inventory[{Slot:23b}].tag{gui_item:1} run scoreboard players set #item value 6

execute unless score @s close_page matches 1 unless data entity @s Inventory[{Slot:22b}].tag{gui_item:1} run scoreboard players set #item value 5
execute unless score @s close_page matches 1 unless data entity @s Inventory[{Slot:21b}].tag{gui_item:1} run scoreboard players set #item value 4
execute unless score @s close_page matches 1 unless data entity @s Inventory[{Slot:20b}].tag{gui_item:1} run scoreboard players set #item value 3
execute unless score @s close_page matches 1 unless data entity @s Inventory[{Slot:19b}].tag{gui_item:1} run scoreboard players set #item value 2
execute unless score @s close_page matches 1 unless data entity @s Inventory[{Slot:18b}].tag{gui_item:1} run scoreboard players set #item value 1

execute if score @s close_page matches 2.. unless data entity @s Inventory[{Slot:12b}].tag{gui_item:1} run scoreboard players set #item value -2
execute if score @s close_page matches ..0 unless data entity @s Inventory[{Slot:14b}].tag{gui_item:1} run scoreboard players set #item value -1


execute if score #exchange value matches 1 run tag @s add exstorage_disable
execute if score #exchange value matches 3 run tag @s add exstorage_disable
execute if entity @s[tag=exstorage_disable] if score #item value matches 12 run scoreboard players reset #item
execute if entity @s[tag=exstorage_disable] if score #item value matches 14 run scoreboard players reset #item
execute if entity @s[tag=exstorage_disable] if score #item value matches 16 run scoreboard players reset #item
execute if entity @s[tag=exstorage_disable] run tag @s remove exstorage_disable

execute if score @s close_page matches 1 if score #item value matches 1 run scoreboard players set #item value2 1
execute if score @s close_page matches 1 if score #item value matches 2 run scoreboard players set #item value2 2
execute if score @s close_page matches 1 if score #item value matches 3 run scoreboard players set #item value2 3
execute if score @s close_page matches 1 if score #item value matches 4 run scoreboard players set #item value2 4
execute if score @s close_page matches 1 if score #item value matches 5 run scoreboard players set #item value2 5
execute if score @s close_page matches 1 if score #item value matches 6 run scoreboard players set #item value2 6
execute if score @s close_page matches 1 if score #item value matches 7 run scoreboard players set #item value2 7
execute if score @s close_page matches 1 if score #item value matches 8 run scoreboard players set #item value2 8
execute if score @s close_page matches 1 if score #item value matches 9 run scoreboard players set #item value2 9
execute if score @s close_page matches 1 if score #item value matches 10 run scoreboard players set #item value2 10
execute if score @s close_page matches 1 if score #item value matches 11 run scoreboard players set #item value2 11
execute if score @s close_page matches 1 if score #item value matches 12 run scoreboard players set #item value2 12
execute if score @s close_page matches 1 if score #item value matches 13 run scoreboard players set #item value2 13
execute if score @s close_page matches 1 if score #item value matches 14 run scoreboard players set #item value2 14
execute if score @s close_page matches 1 if score #item value matches 15 run scoreboard players set #item value2 15
execute if score @s close_page matches 1 if score #item value matches 16 run scoreboard players set #item value2 16
execute if score @s close_page matches 1 if score #item value matches 17 run scoreboard players set #item value2 17
execute if score @s close_page matches 1 if score #item value matches 18 run scoreboard players set #item value2 18


execute if score @s close_page matches 2 if score #item value matches 1 run scoreboard players set #item value2 19
execute if score @s close_page matches 2 if score #item value matches 2 run scoreboard players set #item value2 20
execute if score @s close_page matches 2 if score #item value matches 3 run scoreboard players set #item value2 21
execute if score @s close_page matches 2 if score #item value matches 4 run scoreboard players set #item value2 22
execute if score @s close_page matches 2 if score #item value matches 5 run scoreboard players set #item value2 23
execute if score @s close_page matches 2 if score #item value matches 6 run scoreboard players set #item value2 24
execute if score @s close_page matches 2 if score #item value matches 7 run scoreboard players set #item value2 25
execute if score @s close_page matches 2 if score #item value matches 8 run scoreboard players set #item value2 26
execute if score @s close_page matches 2 if score #item value matches 9 run scoreboard players set #item value2 27
execute if score @s close_page matches 2 if score #item value matches 10 run scoreboard players set #item value2 28
execute if score @s close_page matches 2 if score #item value matches 11 run scoreboard players set #item value2 29
execute if score @s close_page matches 2 if score #item value matches 12 run scoreboard players set #item value2 30
execute if score @s close_page matches 2 if score #item value matches 13 run scoreboard players set #item value2 31
execute if score @s close_page matches 2 if score #item value matches 14 run scoreboard players set #item value2 32
execute if score @s close_page matches 2 if score #item value matches 15 run scoreboard players set #item value2 33
execute if score @s close_page matches 2 if score #item value matches 16 run scoreboard players set #item value2 34
execute if score @s close_page matches 2 if score #item value matches 17 run scoreboard players set #item value2 35
execute if score @s close_page matches 2 if score #item value matches 18 run scoreboard players set #item value2 36


execute if score @s close_page matches 3 if score #item value matches 1 run scoreboard players set #item value2 37
execute if score @s close_page matches 3 if score #item value matches 2 run scoreboard players set #item value2 38
execute if score @s close_page matches 3 if score #item value matches 3 run scoreboard players set #item value2 39
execute if score @s close_page matches 3 if score #item value matches 4 run scoreboard players set #item value2 40
execute if score @s close_page matches 3 if score #item value matches 5 run scoreboard players set #item value2 41
execute if score @s close_page matches 3 if score #item value matches 6 run scoreboard players set #item value2 42
execute if score @s close_page matches 3 if score #item value matches 7 run scoreboard players set #item value2 43
execute if score @s close_page matches 3 if score #item value matches 8 run scoreboard players set #item value2 44
execute if score @s close_page matches 3 if score #item value matches 9 run scoreboard players set #item value2 45
execute if score @s close_page matches 3 if score #item value matches 10 run scoreboard players set #item value2 46
execute if score @s close_page matches 3 if score #item value matches 11 run scoreboard players set #item value2 47
execute if score @s close_page matches 3 if score #item value matches 12 run scoreboard players set #item value2 48
execute if score @s close_page matches 3 if score #item value matches 13 run scoreboard players set #item value2 49
execute if score @s close_page matches 3 if score #item value matches 14 run scoreboard players set #item value2 50
execute if score @s close_page matches 3 if score #item value matches 15 run scoreboard players set #item value2 51
execute if score @s close_page matches 3 if score #item value matches 16 run scoreboard players set #item value2 52
execute if score @s close_page matches 3 if score #item value matches 17 run scoreboard players set #item value2 53
execute if score @s close_page matches 3 if score #item value matches 18 run scoreboard players set #item value2 54


execute if score #item value2 matches 6 run tag @s add select--
execute if entity @s[tag=select--] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
execute if entity @s[tag=select--] run scoreboard players set @s skill1_ct 1
execute if entity @s[tag=select--] run scoreboard players set @s skill2_ct 1
execute if entity @s[tag=select--] run scoreboard players set @s skill3_ct 1
execute if entity @s[tag=select--] run tag @s add gui_change
execute if entity @s[tag=select--] run tag @s remove select--

execute if score #item value2 matches 8 run tag @s add select--
execute if entity @s[tag=select--] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.6 1
execute if entity @s[tag=select--] run scoreboard players set @s weapon_pos 0
execute if entity @s[tag=select--] run scoreboard players set @s support_pos -106
execute if entity @s[tag=select--] run scoreboard players set @s skill1_pos 1
execute if entity @s[tag=select--] run scoreboard players set @s skill2_pos 2
execute if entity @s[tag=select--] run scoreboard players set @s skill3_pos 3
execute if entity @s[tag=select--] run scoreboard players set @s drop 1
execute if entity @s[tag=select--] run tag @s add not_pos_check
execute if entity @s[tag=select--] run tag @s add gui_change
execute if entity @s[tag=select--] run tag @s remove select--

execute if score #item value2 matches 12 run tag @s add select_exstorage--
execute if score #item value2 matches 14 run tag @s add select_exstorage--
execute if score #item value2 matches 16 run tag @s add select_exstorage--
execute if entity @s[tag=select_exstorage--] if score #item value2 matches 12 unless score #playing value matches 3 run scoreboard players set #item value2 50001
execute if entity @s[tag=select_exstorage--] if score #item value2 matches 14 unless score #playing value matches 3 run scoreboard players set #item value2 50002
execute if entity @s[tag=select_exstorage--] if score #item value2 matches 16 unless score #playing value matches 3 run scoreboard players set #item value2 50003
execute if entity @s[tag=select_exstorage--] if score #item value2 matches 12 if score #playing value matches 3 if data entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:8b}] run scoreboard players set #exstorage value 1
execute if entity @s[tag=select_exstorage--] if score #item value2 matches 14 if score #playing value matches 3 if data entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:17b}] run scoreboard players set #exstorage value 2
execute if entity @s[tag=select_exstorage--] if score #item value2 matches 16 if score #playing value matches 3 if data entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:26b}] run scoreboard players set #exstorage value 3
execute if entity @s[tag=select_exstorage--] if score #item value2 matches 12 if score #playing value matches 3 unless data entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:8b}] run scoreboard players set #exstorage value -1
execute if entity @s[tag=select_exstorage--] if score #item value2 matches 14 if score #playing value matches 3 unless data entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:17b}] run scoreboard players set #exstorage value -1
execute if entity @s[tag=select_exstorage--] if score #item value2 matches 16 if score #playing value matches 3 unless data entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:26b}] run scoreboard players set #exstorage value -1
execute if entity @s[tag=select_exstorage--] unless score #exstorage value matches 1..3 unless score #exstorage value matches -1 run scoreboard players operation @s tab = #item value2
execute if entity @s[tag=select_exstorage--] unless score #exstorage value matches 1..3 unless score #exstorage value matches -1 at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2 1
execute if entity @s[tag=select_exstorage--] if score #exstorage value matches -1 at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 1 1
execute if entity @s[tag=select_exstorage--] if score #exstorage value matches 1..3 at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
execute if entity @s[tag=select_exstorage--] if score #exstorage value matches 1..3 run function ex3:items/gui/close/exstorage/load_proc
execute if entity @s[tag=select_exstorage--] if score #exstorage value matches 1..3 run scoreboard players set @s drop 1
execute if entity @s[tag=select_exstorage--] if score #exstorage value matches 1..3 run tag @s add skill_no_drop
execute if entity @s[tag=select_exstorage--] run tag @s add gui_change
execute if entity @s[tag=select_exstorage--] run tag @s remove select_exstorage--

execute if score #item value matches -2 run scoreboard players remove @s close_page 1
execute if score #item value matches -1 run scoreboard players add @s close_page 1
execute if score #item value matches -2..-1 at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
execute if score #item value matches -2..-1 run tag @s add gui_change

scoreboard players reset #item
scoreboard players reset #exstorage

