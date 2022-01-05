#チームアーマー設置
execute unless score #team_armor value matches 1.. run clear @s #ex3:all{armor_item:1}
execute if score #team_armor value matches 1 run tag @s add head_true
execute if score #team_armor value matches 1 run tag @s add body_true
execute if score #team_armor value matches 2 run tag @s add body_true
execute if score #team_armor value matches 3 run tag @s add head_true
execute if score #team_armor value matches 4 run tag @s add feet_true

execute if entity @s[tag=body_true] run tag @s add feet_true

execute if data entity @s {ActiveEffects:[{Id:14b}]} run tag @s add disable_team-armor

execute if entity @s[tag=disable_team-armor,tag=head_true] run tag @s remove head_true
execute if entity @s[tag=disable_team-armor,tag=body_true] run tag @s remove body_true

execute if entity @s[tag=disable_team-armor] run tag @s remove disable_team-armor

data remove block 0 0 0 Items[]
tag @s[tag=!feet,nbt={Inventory:[{Slot:100b,tag:{team_armor:1b}}]}] add feet
clear @s[tag=!feet] #ex3:all{team_armor:1b} 1
execute if entity @s[tag=!feet,tag=feet_true,team=!,team=!wait] run data modify block 0 0 0 Items[{Slot:0b}] set value {id:"leather_boots",Count:1b,tag:{HideFlags:127,Unbreakable:1b,armor_item:1,team_armor:1b,CustomModelData:21,display:{Name:'["",{"text":"チームアーマー","italic":false,"color":"yellow"}]',color:0},AttributeModifiers:[{}]}}
execute if entity @s[tag=!feet,tag=feet_true,team=!,team=!wait] run function ex3:items/team_armor/color
execute if entity @s[tag=!feet,tag=feet_true,team=!,team=!wait] run loot replace entity @s armor.feet 1 mine 0 0 0 air{copy:1b}

data remove block 0 0 0 Items[]
tag @s[tag=!leg,nbt={Inventory:[{Slot:101b,tag:{team_armor:2b}}]}] add leg
clear @s[tag=!leg] #ex3:all{team_armor:2b} 1
execute if entity @s[tag=!leg,tag=body_true,team=!,team=!wait] run data modify block 0 0 0 Items[{Slot:0b}] set value {id:"leather_leggings",Count:1b,tag:{HideFlags:127,Unbreakable:1b,armor_item:1,team_armor:2b,CustomModelData:22,display:{Name:'["",{"text":"チームアーマー","italic":false,"color":"yellow"}]',color:0},AttributeModifiers:[{}]}}
execute if entity @s[tag=!leg,tag=body_true,team=!,team=!wait] run function ex3:items/team_armor/color
execute if entity @s[tag=!leg,tag=body_true,team=!,team=!wait] run loot replace entity @s armor.legs 1 mine 0 0 0 air{copy:1b}

data remove block 0 0 0 Items[]
tag @s[tag=!chest,nbt={Inventory:[{Slot:102b,tag:{team_armor:3b}}]}] add chest
tag @s[tag=elytra] add elytra-b
tag @s[tag=elytra-b,nbt=!{Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{elytra:1b}}]}] remove chest
clear @s[tag=!chest] #ex3:all{team_armor:3b} 1
tag @s[team=wait] add chest
tag @s[team=] add chest
execute if entity @s[tag=!chest,tag=!elytra-b,tag=body_true,team=!,team=!wait] run data modify block 0 0 0 Items[{Slot:0b}] set value {id:"leather_chestplate",Count:1b,tag:{HideFlags:127,Unbreakable:1b,armor_item:1,team_armor:3b,CustomModelData:23,display:{Name:'["",{"text":"チームアーマー","italic":false,"color":"yellow"}]',color:0},AttributeModifiers:[{}]}}
execute if entity @s[tag=!chest,tag=!elytra-b,tag=body_true,team=!,team=!wait] run function ex3:items/team_armor/color
execute if entity @s[tag=!chest,tag=elytra-b,tag=elytra,tag=!drop] run function ex3:items/skill/0018/elytra_setup
execute if entity @s[tag=!chest] run loot replace entity @s armor.chest 1 mine 0 0 0 air{copy:1b}

data remove block 0 0 0 Items[]
tag @s[tag=!head,nbt={Inventory:[{Slot:103b,tag:{team_armor:4b}}]}] add head
clear @s[tag=!head] #ex3:all{team_armor:4b} 1
execute if entity @s[tag=!head,tag=head_true,team=!,team=!wait] run data modify block 0 0 0 Items[{Slot:0b}] set value {id:"leather_helmet",Count:1b,tag:{HideFlags:127,Unbreakable:1b,armor_item:1,team_armor:4b,CustomModelData:24,display:{Name:'["",{"text":"チームアーマー","italic":false,"color":"yellow"}]',color:0},AttributeModifiers:[{}]}}
execute if entity @s[tag=!head,tag=head_true,team=!,team=!wait] run function ex3:items/team_armor/color
execute if entity @s[tag=!head,tag=head_true,team=!,team=!wait] run loot replace entity @s armor.head 1 mine 0 0 0 air{copy:1b}


tag @s[tag=feet] remove feet
tag @s[tag=leg] remove leg
tag @s[tag=chest] remove chest
tag @s[tag=elytra-b] remove elytra-b
tag @s[tag=head] remove head
tag @s[tag=head_true] remove head_true
tag @s[tag=body_true] remove body_true
tag @s[tag=feet_true] remove feet_true