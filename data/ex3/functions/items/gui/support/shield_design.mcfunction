#サポートP1
#tag @s[tag=!shield_design1_container12,nbt={Inventory:[{Slot:12b,tag:{gui_item:3b,shield_desing:1b}}]}] add shield_design1_container12
#clear @s[tag=!shield_design1_container12] minecraft:writable_book{gui_item:3b,shield_desing:1b}
#execute if entity @s[tag=!shield_design1_container12,tag=!page_setup] at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
#tag @s[tag=!shield_design1_container12,tag=!page_setup] add page_setup_ready
#scoreboard players set @s[tag=!shield_design1_container12,tag=!page_setup] support_page 0
replaceitem entity @s[tag=page_setup] inventory.3 minecraft:air



#tag @s[tag=!shield_design1_container14,nbt={Inventory:[{Slot:14b,tag:{gui_item:5b,shield_desing:1b}}]}] add shield_design1_container14
#clear @s[tag=!shield_design1_container14] minecraft:arrow{gui_item:5b,shield_desing:1b}
#execute if entity @s[tag=!shield_design1_container14,tag=!page_setup] at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1
#tag @s[tag=!shield_design1_container14,tag=!page_setup] add page_setup_ready
#scoreboard players set @s[tag=!shield_design1_container14,tag=!page_setup] support_page 2
replaceitem entity @s[tag=page_setup] inventory.5 minecraft:air






#replaceitem entity @s[tag=!ItemS2,score_ItemSelect_min=1,score_ItemSelect=1,score_Shield_min=0,score_Shield=0] slot.inventory.10 minecraft:shield 1 0 {RepairCost:3001,display:{Name:'§fデザイン',Lore:['§8デザイン1/10"]},HideFlags:32,Unbreakable:1}
#replaceitem entity @s[tag=!ItemS2,score_ItemSelect_min=1,score_ItemSelect=1,score_Shield_min=1,score_Shield=1] slot.inventory.10 minecraft:shield 1 0 {RepairCost:3001,display:{Name:'§fデザイン',Lore:['§8デザイン2/10"]},HideFlags:32,Unbreakable:1,BlockEntityTag:{Base:10,Patterns:[{Pattern:sc,Color:1},{Pattern:flo,Color:0}]}}
#replaceitem entity @s[tag=!ItemS2,score_ItemSelect_min=1,score_ItemSelect=1,score_Shield_min=2,score_Shield=2] slot.inventory.10 minecraft:shield 1 0 {RepairCost:3001,display:{Name:'§fデザイン',Lore:['§8デザイン3/10"]},HideFlags:32,Unbreakable:1,BlockEntityTag:{Base:15,Patterns:[{Color:1,Pattern:"cbo"},{Color:15,Pattern:"ts"},{Color:15,Pattern:"bs"},{Color:1,Pattern:"sc"}]}}
#replaceitem entity @s[tag=!ItemS2,score_ItemSelect_min=1,score_ItemSelect=1,score_Shield_min=3,score_Shield=3] slot.inventory.10 minecraft:shield 1 0 {RepairCost:3001,display:{Name:'§fデザイン',Lore:['§8デザイン4/10"]},HideFlags:32,Unbreakable:1,BlockEntityTag:{Base:0,Patterns:[{Color:10,Pattern:"mr"},{Color:0,Pattern:"mc"},{Color:0,Pattern:"tr"},{Color:0,Pattern:"tr"},{Color:0,Pattern:"tr"},{Color:0,Pattern:"bl"},{Color:0,Pattern:"bl"},{Color:0,Pattern:"bl"}]}}
#replaceitem entity @s[tag=!ItemS2,score_ItemSelect_min=1,score_ItemSelect=1,score_Shield_min=4,score_Shield=4] slot.inventory.10 minecraft:shield 1 0 {RepairCost:3001,display:{Name:'§fデザイン',Lore:['§8デザイン5/10"]},HideFlags:32,Unbreakable:1,BlockEntityTag:{Base:15,Patterns:[{Pattern:ld,Color:7},{Pattern:gru,Color:7},{Pattern:sc,Color:4},{Pattern:bo,Color:0}]}}
#replaceitem entity @s[tag=!ItemS2,score_ItemSelect_min=1,score_ItemSelect=1,score_Shield_min=5,score_Shield=5] slot.inventory.10 minecraft:shield 1 0 {RepairCost:3001,display:{Name:'§fデザイン',Lore:['§8デザイン6/10"]},HideFlags:32,Unbreakable:1,BlockEntityTag:{Base:15,Patterns:[{Pattern:gru,Color:8},{Pattern:sc,Color:1}]}}
#replaceitem entity @s[tag=!ItemS2,score_ItemSelect_min=1,score_ItemSelect=1,score_Shield_min=6,score_Shield=6] slot.inventory.10 minecraft:shield 1 0 {RepairCost:3001,display:{Name:'§fデザイン',Lore:['§8デザイン7/10"]},HideFlags:32,Unbreakable:1,BlockEntityTag:{Base:10,Patterns:[{Pattern:gru,Color:2},{Pattern:cre,Color:0}]}}
#replaceitem entity @s[tag=!ItemS2,score_ItemSelect_min=1,score_ItemSelect=1,score_Shield_min=7,score_Shield=7] slot.inventory.10 minecraft:shield 1 0 {RepairCost:3001,display:{Name:'§fデザイン',Lore:['§8デザイン8/10"]},HideFlags:32,Unbreakable:1,BlockEntityTag:{Base:15,Patterns:[{Color:7,Pattern:"mc"},{Color:7,Pattern:"tt"},{Color:15,Pattern:"tt"},{Color:15,Pattern:"tt"},{Color:7,Pattern:"gru"}]}}
#replaceitem entity @s[tag=!ItemS2,score_ItemSelect_min=1,score_ItemSelect=1,score_Shield_min=8,score_Shield=8] slot.inventory.10 minecraft:shield 1 0 {RepairCost:3001,display:{Name:'§fデザイン',Lore:['§8デザイン9/10"]},HideFlags:32,Unbreakable:1,BlockEntityTag:{Base:0,Patterns:[{Color:1,Pattern:"gra"},{Color:0,Pattern:"gru"}]}}
#replaceitem entity @s[tag=!ItemS2,score_ItemSelect_min=1,score_ItemSelect=1,score_Shield_min=9,score_Shield=9] slot.inventory.10 minecraft:shield 1 0 {RepairCost:3001,display:{Name:'§fデザイン',Lore:['§8デザイン10/10"]},HideFlags:32,Unbreakable:1,BlockEntityTag:{Base:0,Patterns:[{Pattern:"cbo",Color:0},{Pattern:"bo",Color:15},{Pattern:"ts",Color:15},{Pattern:"bs",Color:15},{Pattern:"mr",Color:0},{Pattern:"flo",Color:15}]}}




tag @s[tag=!shield_design1_container18,nbt={Inventory:[{Slot:18b,tag:{gui_item:9b,shield_desing:1b}}]}] add shield_design1_container18
clear @s[tag=!shield_design1_container18] minecraft:shield{gui_item:9b,shield_desing:1b}
execute if entity @s if score @s shield_design matches 1 run tag @s add selecting
execute if entity @s[tag=!shield_design1_container18,tag=!page_setup,tag=!selecting] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute if entity @s[tag=!shield_design1_container18,tag=!page_setup,tag=!selecting] run scoreboard players set @s shield_design 1
#execute if entity @s[tag=!shield_design1_container18,tag=!page_setup,tag=!selecting] run scoreboard players set @s view 2
#execute if entity @s[tag=!shield_design1_container18,tag=!page_setup,tag=!selecting] run tag @s add page_setup
execute if entity @s[tag=!shield_design1_container18,tag=!page_setup,tag=!selecting] run scoreboard players set @s drop 1
execute if entity @s[tag=!shield_design1_container18,tag=!page_setup,tag=!selecting] run tag @s add skill_no_drop
replaceitem entity @s[tag=selecting] inventory.9 minecraft:shield{Unbreakable:1b,HideFlags:61,gui_item:9b,shield_desing:1b,CustomModelData:20006,display:{Name:'["",{"text":"デザイン1","italic":false,"color":"white"},{"text":" "},{"text":"選択中","italic":false,"color":"dark_aqua"}]'},Enchantments:[{lvl:1s,id:"unbreaking"}]}
replaceitem entity @s[tag=!selecting] inventory.9 minecraft:shield{Unbreakable:1b,HideFlags:61,gui_item:9b,shield_desing:1b,CustomModelData:20006,display:{Name:'["",{"text":"デザイン1","italic":false,"color":"white"}]'}}
tag @s[tag=selecting] remove selecting


tag @s[tag=!shield_design1_container19,nbt={Inventory:[{Slot:19b,tag:{gui_item:10b,shield_desing:1b}}]}] add shield_design1_container19
clear @s[tag=!shield_design1_container19] minecraft:shield{gui_item:10b,shield_desing:1b}
execute if entity @s if score @s shield_design matches 2 run tag @s add selecting
execute if entity @s[tag=!shield_design1_container19,tag=!page_setup,tag=!selecting] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute if entity @s[tag=!shield_design1_container19,tag=!page_setup,tag=!selecting] run scoreboard players set @s shield_design 2
#execute if entity @s[tag=!shield_design1_container19,tag=!page_setup,tag=!selecting] run scoreboard players set @s view 2
#execute if entity @s[tag=!shield_design1_container19,tag=!page_setup,tag=!selecting] run tag @s add page_setup
execute if entity @s[tag=!shield_design1_container19,tag=!page_setup,tag=!selecting] run scoreboard players set @s drop 1
execute if entity @s[tag=!shield_design1_container19,tag=!page_setup,tag=!selecting] run tag @s add skill_no_drop
replaceitem entity @s[tag=selecting] inventory.10 minecraft:shield{Unbreakable:1b,HideFlags:61,gui_item:10b,shield_desing:1b,CustomModelData:20006,display:{Name:'["",{"text":"デザイン2","italic":false,"color":"white"},{"text":" "},{"text":"選択中","italic":false,"color":"dark_aqua"}]'},BlockEntityTag:{Base:15,Patterns:[{Color:5,Pattern:"mr"},{Color:15,Pattern:"mc"},{Color:15,Pattern:"tl"},{Color:15,Pattern:"tl"},{Color:15,Pattern:"br"},{Color:15,Pattern:"br"}]},Enchantments:[{lvl:1s,id:"unbreaking"}]}
replaceitem entity @s[tag=!selecting] inventory.10 minecraft:shield{Unbreakable:1b,HideFlags:61,gui_item:10b,shield_desing:1b,CustomModelData:20006,display:{Name:'["",{"text":"デザイン2","italic":false,"color":"white"}]'},BlockEntityTag:{Base:15,Patterns:[{Color:5,Pattern:"mr"},{Color:15,Pattern:"mc"},{Color:15,Pattern:"tl"},{Color:15,Pattern:"tl"},{Color:15,Pattern:"br"},{Color:15,Pattern:"br"}]}}
tag @s[tag=selecting] remove selecting


tag @s[tag=!shield_design1_container20,nbt={Inventory:[{Slot:20b,tag:{gui_item:11b,shield_desing:1b}}]}] add shield_design1_container20
clear @s[tag=!shield_design1_container20] minecraft:shield{gui_item:11b,shield_desing:1b}
execute if entity @s if score @s shield_design matches 3 run tag @s add selecting
execute if entity @s[tag=!shield_design1_container20,tag=!page_setup,tag=!selecting] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute if entity @s[tag=!shield_design1_container20,tag=!page_setup,tag=!selecting] run scoreboard players set @s shield_design 3
#execute if entity @s[tag=!shield_design1_container20,tag=!page_setup,tag=!selecting] run scoreboard players set @s view 2
#execute if entity @s[tag=!shield_design1_container20,tag=!page_setup,tag=!selecting] run tag @s add page_setup
execute if entity @s[tag=!shield_design1_container20,tag=!page_setup,tag=!selecting] run scoreboard players set @s drop 1
execute if entity @s[tag=!shield_design1_container20,tag=!page_setup,tag=!selecting] run tag @s add skill_no_drop
replaceitem entity @s[tag=selecting] inventory.11 minecraft:shield{Unbreakable:1b,HideFlags:61,gui_item:11b,shield_desing:1b,CustomModelData:20006,display:{Name:'["",{"text":"デザイン3","italic":false,"color":"white"},{"text":" "},{"text":"選択中","italic":false,"color":"dark_aqua"}]'},BlockEntityTag:{Base:15,Patterns:[{Color:1,Pattern:"cbo"},{Color:15,Pattern:"ts"},{Color:15,Pattern:"bs"},{Color:1,Pattern:"sc"}]},Enchantments:[{lvl:1s,id:"unbreaking"}]}
replaceitem entity @s[tag=!selecting] inventory.11 minecraft:shield{Unbreakable:1b,HideFlags:61,gui_item:11b,shield_desing:1b,CustomModelData:20006,display:{Name:'["",{"text":"デザイン3","italic":false,"color":"white"}]'},BlockEntityTag:{Base:15,Patterns:[{Color:1,Pattern:"cbo"},{Color:15,Pattern:"ts"},{Color:15,Pattern:"bs"},{Color:1,Pattern:"sc"}]}}
tag @s[tag=selecting] remove selecting


tag @s[tag=!shield_design1_container21,nbt={Inventory:[{Slot:21b,tag:{gui_item:12b,shield_desing:1b}}]}] add shield_design1_container21
clear @s[tag=!shield_design1_container21] minecraft:shield{gui_item:12b,shield_desing:1b}
execute if entity @s if score @s shield_design matches 4 run tag @s add selecting
execute if entity @s[tag=!shield_design1_container21,tag=!page_setup,tag=!selecting] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute if entity @s[tag=!shield_design1_container21,tag=!page_setup,tag=!selecting] run scoreboard players set @s shield_design 4
#execute if entity @s[tag=!shield_design1_container21,tag=!page_setup,tag=!selecting] run scoreboard players set @s view 2
#execute if entity @s[tag=!shield_design1_container21,tag=!page_setup,tag=!selecting] run tag @s add page_setup
execute if entity @s[tag=!shield_design1_container21,tag=!page_setup,tag=!selecting] run scoreboard players set @s drop 1
execute if entity @s[tag=!shield_design1_container21,tag=!page_setup,tag=!selecting] run tag @s add skill_no_drop
replaceitem entity @s[tag=selecting] inventory.12 minecraft:shield{Unbreakable:1b,HideFlags:61,gui_item:12b,shield_desing:1b,CustomModelData:20006,display:{Name:'["",{"text":"デザイン4","italic":false,"color":"white"},{"text":" "},{"text":"選択中","italic":false,"color":"dark_aqua"}]'},Enchantments:[{lvl:1s,id:"unbreaking"}]}
replaceitem entity @s[tag=!selecting] inventory.12 minecraft:shield{Unbreakable:1b,HideFlags:61,gui_item:12b,shield_desing:1b,CustomModelData:20006,display:{Name:'["",{"text":"デザイン4","italic":false,"color":"white"}]'}}
tag @s[tag=selecting] remove selecting


tag @s[tag=!shield_design1_container22,nbt={Inventory:[{Slot:22b,tag:{gui_item:13b,shield_desing:1b}}]}] add shield_design1_container22
clear @s[tag=!shield_design1_container22] minecraft:shield{gui_item:13b,shield_desing:1b}
execute if entity @s if score @s shield_design matches 5 run tag @s add selecting
execute if entity @s[tag=!shield_design1_container22,tag=!page_setup,tag=!selecting] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute if entity @s[tag=!shield_design1_container22,tag=!page_setup,tag=!selecting] run scoreboard players set @s shield_design 5
#execute if entity @s[tag=!shield_design1_container22,tag=!page_setup,tag=!selecting] run scoreboard players set @s view 2
#execute if entity @s[tag=!shield_design1_container22,tag=!page_setup,tag=!selecting] run tag @s add page_setup
execute if entity @s[tag=!shield_design1_container22,tag=!page_setup,tag=!selecting] run scoreboard players set @s drop 1
execute if entity @s[tag=!shield_design1_container22,tag=!page_setup,tag=!selecting] run tag @s add skill_no_drop
replaceitem entity @s[tag=selecting] inventory.13 minecraft:shield{Unbreakable:1b,HideFlags:61,gui_item:13b,shield_desing:1b,CustomModelData:20006,display:{Name:'["",{"text":"デザイン5","italic":false,"color":"white"},{"text":" "},{"text":"選択中","italic":false,"color":"dark_aqua"}]'},Enchantments:[{lvl:1s,id:"unbreaking"}]}
replaceitem entity @s[tag=!selecting] inventory.13 minecraft:shield{Unbreakable:1b,HideFlags:61,gui_item:13b,shield_desing:1b,CustomModelData:20006,display:{Name:'["",{"text":"デザイン5","italic":false,"color":"white"}]'}}
tag @s[tag=selecting] remove selecting


tag @s[tag=!shield_design1_container23,nbt={Inventory:[{Slot:23b,tag:{gui_item:14b,shield_desing:1b}}]}] add shield_design1_container23
clear @s[tag=!shield_design1_container23] minecraft:shield{gui_item:14b,shield_desing:1b}
execute if entity @s if score @s shield_design matches 6 run tag @s add selecting
execute if entity @s[tag=!shield_design1_container23,tag=!page_setup,tag=!selecting] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute if entity @s[tag=!shield_design1_container23,tag=!page_setup,tag=!selecting] run scoreboard players set @s shield_design 6
#execute if entity @s[tag=!shield_design1_container23,tag=!page_setup,tag=!selecting] run scoreboard players set @s view 2
#execute if entity @s[tag=!shield_design1_container23,tag=!page_setup,tag=!selecting] run tag @s add page_setup
execute if entity @s[tag=!shield_design1_container23,tag=!page_setup,tag=!selecting] run scoreboard players set @s drop 1
execute if entity @s[tag=!shield_design1_container23,tag=!page_setup,tag=!selecting] run tag @s add skill_no_drop
replaceitem entity @s[tag=selecting] inventory.14 minecraft:shield{Unbreakable:1b,HideFlags:61,gui_item:14b,shield_desing:1b,CustomModelData:20006,display:{Name:'["",{"text":"デザイン6","italic":false,"color":"white"},{"text":" "},{"text":"選択中","italic":false,"color":"dark_aqua"}]'},Enchantments:[{lvl:1s,id:"unbreaking"}]}
replaceitem entity @s[tag=!selecting] inventory.14 minecraft:shield{Unbreakable:1b,HideFlags:61,gui_item:14b,shield_desing:1b,CustomModelData:20006,display:{Name:'["",{"text":"デザイン6","italic":false,"color":"white"}]'}}
tag @s[tag=selecting] remove selecting


#tag @s[tag=!shield_design1_container24,nbt={Inventory:[{Slot:24b,tag:{gui_item:15b,shield_desing:1b}}]}] add shield_design1_container24
#clear @s[tag=!shield_design1_container24] {gui_item:15b,shield_desing:1b}
#execute if entity @s[tag=!shield_design1_container24,tag=!page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
replaceitem entity @s[tag=page_setup] inventory.15 minecraft:air
tag @s[tag=selecting] remove selecting


#tag @s[tag=!shield_design1_container25,nbt={Inventory:[{Slot:25b,tag:{gui_item:16b,shield_desing:1b}}]}] add shield_design1_container25
#clear @s[tag=!shield_design1_container25] {gui_item:16b,shield_desing:1b}
#execute if entity @s[tag=!shield_design1_container25,tag=!page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
replaceitem entity @s[tag=page_setup] inventory.16 minecraft:air
tag @s[tag=selecting] remove selecting


#tag @s[tag=!shield_design1_container26,nbt={Inventory:[{Slot:26b,tag:{gui_item:17b,shield_desing:1b}}]}] add shield_design1_container26
#clear @s[tag=!shield_design1_container26] {gui_item:17b,shield_desing:1b}
#execute if entity @s[tag=!shield_design1_container26,tag=!page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
replaceitem entity @s[tag=page_setup] inventory.17 minecraft:air
tag @s[tag=selecting] remove selecting


#tag @s[tag=!shield_design1_container27,nbt={Inventory:[{Slot:27b,tag:{gui_item:18b,shield_desing:1b}}]}] add shield_design1_container27
#clear @s[tag=!shield_design1_container27] {gui_item:18b,shield_desing:1b}
#execute if entity @s[tag=!shield_design1_container27,tag=!page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
replaceitem entity @s[tag=page_setup] inventory.18 minecraft:air
tag @s[tag=selecting] remove selecting


#tag @s[tag=!shield_design1_container28,nbt={Inventory:[{Slot:28b,tag:{gui_item:19b,shield_desing:1b}}]}] add shield_design1_container28
#clear @s[tag=!shield_design1_container28] {gui_item:19b,shield_desing:1b}
#execute if entity @s[tag=!shield_design1_container28,tag=!page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
replaceitem entity @s[tag=page_setup] inventory.19 minecraft:air
tag @s[tag=selecting] remove selecting


#tag @s[tag=!shield_design1_container29,nbt={Inventory:[{Slot:29b,tag:{gui_item:20b,shield_desing:1b}}]}] add shield_design1_container29
#clear @s[tag=!shield_design1_container29] {gui_item:20b,shield_desing:1b}
#execute if entity @s[tag=!shield_design1_container29,tag=!page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
replaceitem entity @s[tag=page_setup] inventory.20 minecraft:air
tag @s[tag=selecting] remove selecting


#tag @s[tag=!shield_design1_container30,nbt={Inventory:[{Slot:30b,tag:{gui_item:21b,shield_desing:1b}}]}] add shield_design1_container30
#clear @s[tag=!shield_design1_container30] {gui_item:21b,shield_desing:1b}
#execute if entity @s[tag=!shield_design1_container30,tag=!page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
replaceitem entity @s[tag=page_setup] inventory.21 minecraft:air
tag @s[tag=selecting] remove selecting


#tag @s[tag=!shield_design1_container31,nbt={Inventory:[{Slot:31b,tag:{gui_item:22b,shield_desing:1b}}]}] add shield_design1_container31
#clear @s[tag=!shield_design1_container31] {gui_item:22b,shield_desing:1b}
#execute if entity @s[tag=!shield_design1_container31,tag=!page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
replaceitem entity @s[tag=page_setup] inventory.22 minecraft:air
tag @s[tag=selecting] remove selecting


#tag @s[tag=!shield_design1_container32,nbt={Inventory:[{Slot:32b,tag:{gui_item:23b,shield_desing:1b}}]}] add shield_design1_container32
#clear @s[tag=!shield_design1_container32] {gui_item:23b,shield_desing:1b}
#execute if entity @s[tag=!shield_design1_container32,tag=!page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
replaceitem entity @s[tag=page_setup] inventory.23 minecraft:air
tag @s[tag=selecting] remove selecting


#tag @s[tag=!shield_design1_container33,nbt={Inventory:[{Slot:33b,tag:{gui_item:24b,shield_desing:1b}}]}] add shield_design1_container33
#clear @s[tag=!shield_design1_container33] {gui_item:24b,shield_desing:1b}
#execute if entity @s[tag=!shield_design1_container33,tag=!page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
replaceitem entity @s[tag=page_setup] inventory.24 minecraft:air
tag @s[tag=selecting] remove selecting


#tag @s[tag=!shield_design1_container34,nbt={Inventory:[{Slot:34b,tag:{gui_item:25b,shield_desing:1b}}]}] add shield_design1_container34
#clear @s[tag=!shield_design1_container34] {gui_item:25b,shield_desing:1b}
#execute if entity @s[tag=!shield_design1_container34,tag=!page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
replaceitem entity @s[tag=page_setup] inventory.25 minecraft:air
tag @s[tag=selecting] remove selecting


#tag @s[tag=!shield_design1_container35,nbt={Inventory:[{Slot:35b,tag:{gui_item:26b,shield_desing:1b}}]}] add shield_design1_container35
#clear @s[tag=!shield_design1_container35] {gui_item:26b,shield_desing:1b}
#execute if entity @s[tag=!shield_design1_container35,tag=!page_setup] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
replaceitem entity @s[tag=page_setup] inventory.26 minecraft:air
tag @s[tag=selecting] remove selecting






#Tagの削除
tag @s[tag=shield_design1_container12] remove shield_design1_container12
tag @s[tag=shield_design1_container14] remove shield_design1_container14
tag @s[tag=shield_design1_container18] remove shield_design1_container18
tag @s[tag=shield_design1_container19] remove shield_design1_container19
tag @s[tag=shield_design1_container20] remove shield_design1_container20
tag @s[tag=shield_design1_container21] remove shield_design1_container21
tag @s[tag=shield_design1_container22] remove shield_design1_container22
tag @s[tag=shield_design1_container23] remove shield_design1_container23
tag @s[tag=shield_design1_container24] remove shield_design1_container24
tag @s[tag=shield_design1_container25] remove shield_design1_container25
tag @s[tag=shield_design1_container26] remove shield_design1_container26
tag @s[tag=shield_design1_container27] remove shield_design1_container27
tag @s[tag=shield_design1_container28] remove shield_design1_container28
tag @s[tag=shield_design1_container29] remove shield_design1_container29
tag @s[tag=shield_design1_container30] remove shield_design1_container30
tag @s[tag=shield_design1_container31] remove shield_design1_container31
tag @s[tag=shield_design1_container32] remove shield_design1_container32
tag @s[tag=shield_design1_container33] remove shield_design1_container33
tag @s[tag=shield_design1_container34] remove shield_design1_container34
tag @s[tag=shield_design1_container35] remove shield_design1_container35
tag @s[tag=page_setup_ready] add page_setup
tag @s[tag=page_setup_ready] remove page_setup_ready