#closeP1


execute if score #exchange value matches 0 run tag @s add exstorage_enable
execute if score #exchange value matches 2 run tag @s add exstorage_enable


execute if entity @s[tag=exstorage_enable] run data modify block 0 0 0 Items[{Slot:7b}] merge from entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:7b}]
execute if entity @s[tag=exstorage_enable] run data modify block 0 0 0 Items[{Slot:7b}].Slot set value 20
execute if entity @s[tag=exstorage_enable] run data modify block 0 0 0 Items[{Slot:16b}] merge from entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:16b}]
execute if entity @s[tag=exstorage_enable] run data modify block 0 0 0 Items[{Slot:16b}].Slot set value 22
execute if entity @s[tag=exstorage_enable] run data modify block 0 0 0 Items[{Slot:25b}] merge from entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items[{Slot:25b}]
execute if entity @s[tag=exstorage_enable] run data modify block 0 0 0 Items[{Slot:25b}].Slot set value 24

execute unless data entity @s Inventory[{tag:{operator_book:1}}] run data modify block 0 0 0 Items[{Slot:10b}] merge value {id:"written_book",Count:1b,tag:{operator_book:1,pages:['["",{"text":"【注意】","bold":true,"underlined":true},{"text":"\\nこの本はオペレーター権限を所有しているプレイヤーのみが使用できます\\n\\n","color":"reset"},{"text":"試合の強制終了","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/execute if score #timer value matches 1 run function ex3:game/end/force"},"hoverEvent":{"action":"show_text","value":"実行中の試合を中断"}}]'],title:"オペレーターコンソール",author:NeAc}}

execute if score #playing value matches 0 run data modify block 0 0 0 Items[{Slot:14b}] merge value {id:"compass",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"CT回復","italic":false,"color":"#11eeee"}'}}}

data modify block 0 0 0 Items[{Slot:16b}] merge value {id:"lava_bucket",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"配置初期化","italic":false,"color":"#ee0000","underlined":true}'}}}

execute if entity @s[tag=exstorage_enable] run tag @s remove exstorage_enable
