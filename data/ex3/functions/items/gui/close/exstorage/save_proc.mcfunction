data remove block 0 0 0 Items[]

data modify block 0 0 0 Items set from entity @s EnderItems[{Slot:0b}].tag.BlockEntityTag.Items

data modify block 0 0 0 Items[{Slot:1b}] merge value {id:"stone",Count:1b,tag:{gui_item:1,data:{weapon:0,support:0,skill1:0,skill2:0,skill3:0},display:{Name:'{"text":"data","italic":false,"color":"gray"}'},HideFlags:63}}
execute store result block 0 0 0 Items[{Slot:1b}].tag.data.weapon int 1 run scoreboard players operation #item value = @s weapon
function ex3:items/loot/weapon
data modify block 0 0 0 Items[{Slot:0b}].Slot set value 2
execute store result block 0 0 0 Items[{Slot:1b}].tag.data.support int 1 run scoreboard players operation #item value = @s support
function ex3:items/loot/support
data modify block 0 0 0 Items[{Slot:0b}].Slot set value 3
execute store result block 0 0 0 Items[{Slot:1b}].tag.data.skill1 int 1 run scoreboard players operation #item value = @s skill1
function ex3:items/loot/skill
data modify block 0 0 0 Items[{Slot:0b}].Slot set value 4
execute store result block 0 0 0 Items[{Slot:1b}].tag.data.skill2 int 1 run scoreboard players operation #item value = @s skill2
function ex3:items/loot/skill
data modify block 0 0 0 Items[{Slot:0b}].Slot set value 5
execute store result block 0 0 0 Items[{Slot:1b}].tag.data.skill3 int 1 run scoreboard players operation #item value = @s skill3
function ex3:items/loot/skill
data modify block 0 0 0 Items[{Slot:0b}].Slot set value 6

execute if score #exstorage value matches 1 run function ex3:items/gui/close/exstorage/1/save
execute if score #exstorage value matches 2 run function ex3:items/gui/close/exstorage/2/save
execute if score #exstorage value matches 3 run function ex3:items/gui/close/exstorage/3/save

data remove block 0 0 0 Items[{Slot:1b}]
data remove block 0 0 0 Items[{Slot:2b}]
data remove block 0 0 0 Items[{Slot:3b}]
data remove block 0 0 0 Items[{Slot:4b}]
data remove block 0 0 0 Items[{Slot:5b}]
data remove block 0 0 0 Items[{Slot:6b}]
loot replace entity @s enderchest.0 mine 0 0 0