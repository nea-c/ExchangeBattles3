
data remove block 0 0 0 Items[{Slot:26b}]
data modify block 0 0 0 Items[{Slot:1b}].Slot set value 26

data modify block 0 0 0 Items[{Slot:25b}] merge value {id:"music_disc_cat",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"エクストレージ3","italic":false,"color":"green"}'},CustomModelData:50010,HideFlags:63}}
loot replace block 0 0 0 container.1 loot ex3:items/exstorage
data modify block 0 0 0 Items[{Slot:25b}].tag.display.Lore set from block 0 0 0 Items[{Slot:1b}].tag.display.Lore