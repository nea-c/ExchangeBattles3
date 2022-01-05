tag @s remove gui_change

scoreboard players set #tab value 0
scoreboard players operation #tab value = @s tab
scoreboard players operation #tab value /= #10000 value

data remove block 0 0 0 Items[]

execute if score #tab value matches 0 if entity @s[scores={tab=1}] run function ex3:items/gui/weapon/set
execute if score #tab value matches 0 if entity @s[scores={tab=2}] run function ex3:items/gui/support/set
execute if score #tab value matches 0 if entity @s[scores={tab=3}] run function ex3:items/gui/skill/set
execute if score #tab value matches 0 if entity @s[scores={tab=5}] run function ex3:items/gui/close/set
execute if score #tab value matches 0 if entity @s[scores={tab=9}] run function ex3:items/gui/radio_chat/set

execute if score #tab value matches 0 unless score @s tab matches 1 run data modify block 0 0 0 Items[{Slot:0b}] merge value {id:"minecraft:iron_sword",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"ウェポン","italic":false,"color":"yellow"}'},CustomModelData:10000,AttributeModifiers:[{}]}}
execute if score #tab value matches 0 if score @s tab matches 1 run data modify block 0 0 0 Items[{Slot:0b}] merge value {id:"minecraft:iron_sword",Count:1b,tag:{gui_item:1,display:{Name:'[{"text":"ウェポン","italic":false,"color":"yellow"},{"text":" "},{"text":"選択中","italic":false,"color":"dark_aqua"}]'},CustomModelData:10000,Enchantments:[{}],AttributeModifiers:[{}]}}
execute if score #tab value matches 0 unless score @s tab matches 2 run data modify block 0 0 0 Items[{Slot:1b}] merge value {id:"minecraft:golden_sword",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"サポート","italic":false,"color":"yellow"}'},CustomModelData:20000,AttributeModifiers:[{}]}}
execute if score #tab value matches 0 if score @s tab matches 2 run data modify block 0 0 0 Items[{Slot:1b}] merge value {id:"minecraft:golden_sword",Count:1b,tag:{gui_item:1,display:{Name:'[{"text":"サポート","italic":false,"color":"yellow"},{"text":" "},{"text":"選択中","italic":false,"color":"dark_aqua"}]'},CustomModelData:20000,Enchantments:[{}],AttributeModifiers:[{}]}}
execute if score #tab value matches 0 unless score @s tab matches 3 run data modify block 0 0 0 Items[{Slot:2b}] merge value {id:"minecraft:campfire",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"スキル","italic":false,"color":"yellow"}'},CustomModelData:30000}}
execute if score #tab value matches 0 if score @s tab matches 3 run data modify block 0 0 0 Items[{Slot:2b}] merge value {id:"minecraft:campfire",Count:1b,tag:{gui_item:1,display:{Name:'[{"text":"スキル","italic":false,"color":"yellow"},{"text":" "},{"text":"選択中","italic":false,"color":"dark_aqua"}]'},CustomModelData:30000,Enchantments:[{}]}}
execute if score #tab value matches 0 unless score @s tab matches 5 run data modify block 0 0 0 Items[{Slot:4b}] merge value {id:"minecraft:structure_void",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"閉じる","italic":false,"color":"red"}'},CustomModelData:50001}}
execute if score #tab value matches 0 unless score @s tab matches 9 run data modify block 0 0 0 Items[{Slot:8b}] merge value {id:"minecraft:book",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"ラジオチャット","italic":false,"color":"yellow"}'}}}
execute if score #tab value matches 0 if score @s tab matches 9 run data modify block 0 0 0 Items[{Slot:8b}] merge value {id:"minecraft:book",Count:1b,tag:{gui_item:1,display:{Name:'[{"text":"ラジオチャット","italic":false,"color":"yellow"},{"text":" "},{"text":"選択中","italic":false,"color":"dark_aqua"}]'},Enchantments:[{}]}}

execute unless score #tab value matches 0 run data remove block 0 0 0 Items[]
execute if score #tab value matches 3 run function ex3:items/gui/skill/select_slot/set
execute if score #tab value matches 5 run function ex3:items/gui/close/exstorage/set

clear @s #ex3:all{gui_item:1}
loot replace entity @s container.9 27 mine 0 0 0 minecraft:air{copy:1b}

data remove block 0 0 0 Items[]
scoreboard players reset #tab