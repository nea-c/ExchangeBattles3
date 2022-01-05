#サポート位置検知

execute store result score #support_slot_check value run data get entity @s Inventory[{Slot:0b}].tag.CustomModelData
execute if score #support_slot_check value matches 20000..29999 run scoreboard players set @s support_pos 0
scoreboard players reset #support_slot_check

execute store result score #support_slot_check value run data get entity @s Inventory[{Slot:1b}].tag.CustomModelData
execute if score #support_slot_check value matches 20000..29999 run scoreboard players set @s support_pos 1
scoreboard players reset #support_slot_check

execute store result score #support_slot_check value run data get entity @s Inventory[{Slot:2b}].tag.CustomModelData
execute if score #support_slot_check value matches 20000..29999 run scoreboard players set @s support_pos 2
scoreboard players reset #support_slot_check

execute store result score #support_slot_check value run data get entity @s Inventory[{Slot:3b}].tag.CustomModelData
execute if score #support_slot_check value matches 20000..29999 run scoreboard players set @s support_pos 3
scoreboard players reset #support_slot_check

execute store result score #support_slot_check value run data get entity @s Inventory[{Slot:4b}].tag.CustomModelData
execute if score #support_slot_check value matches 20000..29999 run scoreboard players set @s support_pos 4
scoreboard players reset #support_slot_check

execute store result score #support_slot_check value run data get entity @s Inventory[{Slot:5b}].tag.CustomModelData
execute if score #support_slot_check value matches 20000..29999 run scoreboard players set @s support_pos 5
scoreboard players reset #support_slot_check

execute store result score #support_slot_check value run data get entity @s Inventory[{Slot:6b}].tag.CustomModelData
execute if score #support_slot_check value matches 20000..29999 run scoreboard players set @s support_pos 6
scoreboard players reset #support_slot_check

execute store result score #support_slot_check value run data get entity @s Inventory[{Slot:7b}].tag.CustomModelData
execute if score #support_slot_check value matches 20000..29999 run scoreboard players set @s support_pos 7
scoreboard players reset #support_slot_check

execute store result score #support_slot_check value run data get entity @s Inventory[{Slot:8b}].tag.CustomModelData
execute if score #support_slot_check value matches 20000..29999 run scoreboard players set @s support_pos 8
scoreboard players reset #support_slot_check

execute store result score #support_slot_check value run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData
execute if score #support_slot_check value matches 20000..29999 run scoreboard players set @s support_pos -106
scoreboard players reset #support_slot_check

