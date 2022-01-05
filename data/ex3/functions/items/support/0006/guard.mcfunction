#サポート6

data remove block 0 0 0 Items[]
loot replace block 0 0 0 container.0 loot ex3:items/support/0006
execute store result score #support6 skill1_ct_max run data get block 0 0 0 Items[{Slot:0b}].tag.d-amount 10

scoreboard players operation #support6 number = @s number
execute if entity @e[tag=support6-time,limit=1] as @e[tag=support6-time] if score @s number = #support6 number run tag @s add support6-breaking

data remove block 0 0 0 Items[]
data modify block 0 0 0 Items set from entity @s EnderItems[{Slot:1b}].tag.BlockEntityTag.Items
execute store result score #support6 value2 run data get block 0 0 0 Items[{Slot:0b}].tag.data.damage
scoreboard players operation #support6 value2 += #support6 value
execute unless entity @e[tag=support6-breaking,limit=1] store result block 0 0 0 Items[{Slot:0b}].tag.data.damage int 1 run scoreboard players get #support6 value2
execute unless entity @e[tag=support6-breaking,limit=1] if score #support6 value2 >= #support6 skill1_ct_max store result block 0 0 0 Items[{Slot:0b}].tag.data.damage int 1 run scoreboard players set #support6 skill1 0
loot replace entity @s enderchest.1 mine 0 0 0

data remove block 0 0 0 Items[]
loot replace block 0 0 0 container.0 loot ex3:items/support/0006
scoreboard players operation #slot_pos value = @s support_pos

scoreboard players set #support6 skill1 336
scoreboard players operation #support6 skill1 *= #support6 value2
scoreboard players operation #support6 skill1 /= #support6 skill1_ct_max

execute if score #support6 skill1 matches 0 run scoreboard players set #support6 skill1 1
execute store result block 0 0 0 Items[{Slot:0b}].tag.Damage int 1 run scoreboard players get #support6 skill1


execute unless entity @e[tag=support6-breaking,limit=1] unless score #support6 value2 >= #support6 skill1_ct_max run function ex3:items/loot/end
execute unless entity @e[tag=support6-breaking,limit=1] if score #support6 value2 >= #support6 skill1_ct_max run function ex3:items/support/0006/break

execute if entity @e[tag=support6-breaking,limit=1] as @e[tag=support6-breaking] run tag @s remove support6-breaking
execute if entity @s[scores={tab=2,support_page=1}] run tag @s add gui_change


scoreboard players reset #support6
