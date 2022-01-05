#サポート6
scoreboard players operation #slot_pos value = @s support_pos

loot replace block 0 0 0 container.0 loot ex3:items/support/0006

execute store result score #support6 value2 run data get entity @s EnderItems[{Slot:1b}].tag.BlockEntityTag.Items[{Slot:0b}].tag.data.damage
execute store result score #support6 skill1_ct_max run data get block 0 0 0 Items[{Slot:0b}].tag.d-amount 10

scoreboard players set #support6 skill1 336
scoreboard players operation #support6 skill1 *= #support6 value2
scoreboard players operation #support6 skill1 /= #support6 skill1_ct_max

execute if score #support6 skill1 matches 0 run scoreboard players set #support6 skill1 1
execute store result block 0 0 0 Items[{Slot:0b}].tag.Damage int 1 run scoreboard players get #support6 skill1

scoreboard players reset #support6

function ex3:items/loot/end