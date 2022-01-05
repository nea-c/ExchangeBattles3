
execute if entity @s[tag=start-exstorage] if data entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:8b}] run scoreboard players set #exstorage value 3
execute if entity @s[tag=start-exstorage] if data entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:17b}] run scoreboard players set #exstorage value 2
execute if entity @s[tag=start-exstorage] if data entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:26b}] run scoreboard players set #exstorage value 1


execute if score #exstorage value matches 1 run data modify block 0 0 0 Items[{Slot:8b}] set from entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:8b}]
execute if score #exstorage value matches 1 run data modify block 0 0 0 Items[{Slot:8b}].Slot set value 1
execute if score #exstorage value matches 2 run data modify block 0 0 0 Items[{Slot:17b}] set from entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:17b}]
execute if score #exstorage value matches 2 run data modify block 0 0 0 Items[{Slot:17b}].Slot set value 1
execute if score #exstorage value matches 3 run data modify block 0 0 0 Items[{Slot:26b}] set from entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:26b}]
execute if score #exstorage value matches 3 run data modify block 0 0 0 Items[{Slot:26b}].Slot set value 1


execute store result score @s weapon run data get block 0 0 0 Items[{Slot:1b}].tag.data.weapon
execute store result score @s support run data get block 0 0 0 Items[{Slot:1b}].tag.data.support
execute store result score @s skill1 run data get block 0 0 0 Items[{Slot:1b}].tag.data.skill1
execute store result score @s skill2 run data get block 0 0 0 Items[{Slot:1b}].tag.data.skill2
execute store result score @s skill3 run data get block 0 0 0 Items[{Slot:1b}].tag.data.skill3

execute if entity @s[tag=start-exstorage] run scoreboard players reset #exstorage value
execute if entity @s[tag=start-exstorage] run tag @s remove start-exstorage