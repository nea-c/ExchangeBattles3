#エクストレージSetup

scoreboard players operation #tab value = @s tab
scoreboard players operation #tab value %= #10000 value

data remove block 0 0 0 Items[]

execute if score #tab value matches 1 run data modify block 0 0 0 Items[{Slot:8b}] set from entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:8b}]
execute if score #tab value matches 1 run data modify block 0 0 0 Items[{Slot:8b}].Slot set value 1
execute if score #tab value matches 2 run data modify block 0 0 0 Items[{Slot:17b}] set from entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:17b}]
execute if score #tab value matches 2 run data modify block 0 0 0 Items[{Slot:17b}].Slot set value 1
execute if score #tab value matches 3 run data modify block 0 0 0 Items[{Slot:26b}] set from entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:26b}]
execute if score #tab value matches 3 run data modify block 0 0 0 Items[{Slot:26b}].Slot set value 1

execute if data block 0 0 0 Items[{Slot:1b}] run tag @s add saved

data modify block 0 0 0 Items[{Slot:12b}] merge value {id:"lime_stained_glass_pane",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"保存","italic":false,"color":"yellow"}'},CustomModelData:51}}
data modify block 0 0 0 Items[{Slot:14b}] merge value {id:"lime_stained_glass_pane",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"使う","italic":false,"color":"yellow"}'},CustomModelData:52}}
data modify block 0 0 0 Items[{Slot:22b}] merge value {id:"barrier",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"戻る","italic":false,"color":"red"}'},CustomModelData:1}}


execute if entity @s[tag=saved] store result score #item value run data get block 0 0 0 Items[{Slot:1b}].tag.data.weapon
execute if entity @s[tag=saved] run function ex3:items/loot/weapon
execute if entity @s[tag=saved] run data modify block 0 0 0 Items[{Slot:0b}].tag.gui_item set value 1
execute if entity @s[tag=saved] run data modify block 0 0 0 Items[{Slot:0b}].Slot set value 2
execute if entity @s[tag=saved] store result score #item value run data get block 0 0 0 Items[{Slot:1b}].tag.data.support
execute if entity @s[tag=saved] run function ex3:items/loot/support
execute if entity @s[tag=saved] run data modify block 0 0 0 Items[{Slot:0b}].tag.gui_item set value 1
execute if entity @s[tag=saved] run data modify block 0 0 0 Items[{Slot:0b}].Slot set value 3
execute if entity @s[tag=saved] store result score #item value run data get block 0 0 0 Items[{Slot:1b}].tag.data.skill1
execute if entity @s[tag=saved] run function ex3:items/loot/skill
execute if entity @s[tag=saved] run data modify block 0 0 0 Items[{Slot:0b}].tag.gui_item set value 1
execute if entity @s[tag=saved] run data modify block 0 0 0 Items[{Slot:0b}].Slot set value 4
execute if entity @s[tag=saved] store result score #item value run data get block 0 0 0 Items[{Slot:1b}].tag.data.skill2
execute if entity @s[tag=saved] run function ex3:items/loot/skill
execute if entity @s[tag=saved] run data modify block 0 0 0 Items[{Slot:0b}].tag.gui_item set value 1
execute if entity @s[tag=saved] run data modify block 0 0 0 Items[{Slot:0b}].Slot set value 5
execute if entity @s[tag=saved] store result score #item value run data get block 0 0 0 Items[{Slot:1b}].tag.data.skill3
execute if entity @s[tag=saved] run function ex3:items/loot/skill
execute if entity @s[tag=saved] run data modify block 0 0 0 Items[{Slot:0b}].tag.gui_item set value 1
execute if entity @s[tag=saved] run data modify block 0 0 0 Items[{Slot:0b}].Slot set value 6

execute if entity @s[tag=saved] run data modify block 0 0 0 Items[{Slot:12b}].id set value blue_stained_glass_pane
execute if entity @s[tag=saved] run data modify block 0 0 0 Items[{Slot:12b}].tag.display.Name set value '{"text":"上書き保存","italic":false,"color":"yellow"}'
execute if entity @s[tag=!saved] run data modify block 0 0 0 Items[{Slot:14b}].id set value red_stained_glass_pane
execute if entity @s[tag=!saved] run data modify block 0 0 0 Items[{Slot:14b}].tag.display.Name set value '{"text":"保存されていません","italic":false,"color":"red"}'

data remove block 0 0 0 Items[{Slot:1b}]

execute if entity @s[tag=saved] run tag @s remove saved

scoreboard players reset #tab