data remove block 0 0 0 Items[]
loot replace block 0 0 0 container.0 loot ex3:items/support/0006
execute store result score #support6 skill1_ct_max run data get block 0 0 0 Items[{Slot:0b}].tag.d-amount 10

data remove block 0 0 0 Items[]
data modify block 0 0 0 Items set from entity @s EnderItems[{Slot:1b}].tag.BlockEntityTag.Items
execute store result score #support6 value2 run data get block 0 0 0 Items[{Slot:0b}].tag.data.damage
execute store result block 0 0 0 Items[{Slot:0b}].tag.data.damage int 1 run scoreboard players set #support6 skill1 0
loot replace entity @s enderchest.1 mine 0 0 0

execute if entity @s[scores={tab=2,support_page=1}] run tag @s add gui_change

scoreboard players reset #support6