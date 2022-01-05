#ログイン時に実行される処理
#advencementから呼び出しているので全て@sで記述してください


title @s times 0 50 20
title @s title {"text":"Welcome!","bold":true}
title @s subtitle {"selector": "@s"}

#ロビーTP
#function ex3:lobby/tp
#spawnpoint @s 999 88 987
#アドベンチャーに変更
#gamemode adventure @s
data remove block 0 0 0 Items[]
data modify block 0 0 0 Items[{Slot:7b}] merge value {id:"music_disc_stal",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"エクストレージ1","italic":false,"color":"gray"}'},CustomModelData:50010,HideFlags:63}}
data modify block 0 0 0 Items[{Slot:16b}] merge value {id:"music_disc_stal",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"エクストレージ2","italic":false,"color":"gray"}'},CustomModelData:50011,HideFlags:63}}
data modify block 0 0 0 Items[{Slot:25b}] merge value {id:"music_disc_stal",Count:1b,tag:{gui_item:1,display:{Name:'{"text":"エクストレージ3","italic":false,"color":"gray"}'},CustomModelData:50012,HideFlags:63}}
loot replace entity @s enderchest.0 mine 0 0 0

data remove block 0 0 0 Items[]
data modify block 0 0 0 Items[{Slot:0b}] merge value {id:"stone",Count:1b,tag:{data:{damage:0},display:{Name:'{"text":"support6_damage","italic":false,"color":"gray"}'},HideFlags:63}}
loot replace entity @s enderchest.1 mine 0 0 0


#ボスバーを見えるように
bossbar set ex3:auto_start players @a
bossbar set ex3:game players @a

#エフェクト付与
#effect give @s minecraft:health_boost 1000000 4 true
#effect give @s minecraft:instant_health 1 20 true

#スコア初期化
scoreboard players operation @s number = #number_base number
scoreboard players add #number_base number 1
scoreboard players set @s logout 1
scoreboard players set @s game_number -1
#インベントリのセットアップ用初期化
tag @s add gui_change
scoreboard players set @s tab 5
scoreboard players set @s close_page 1
scoreboard players set @s weapon_page 1
scoreboard players set @s support_page 1
scoreboard players set @s skill_page 1
scoreboard players set @s radio_chat_page 1
scoreboard players set @s skill1_ct 0
scoreboard players set @s skill2_ct 0
scoreboard players set @s skill3_ct 0
scoreboard players set @s weapon_pos 0
scoreboard players set @s support_pos -106
scoreboard players set @s skill1_pos 1
scoreboard players set @s skill2_pos 2
scoreboard players set @s skill3_pos 3
scoreboard players set @s weapon 1
scoreboard players set @s support 1
scoreboard players set @s skill1 1
scoreboard players set @s skill2 2
scoreboard players set @s skill3 3
scoreboard players set @s arrow 7

tag @s add drop
function ex3:general/inventory_changed/execution

scoreboard players operation @s max_health = #max_health_base value
scoreboard players operation @s health = @s max_health
scoreboard players operation @s health *= #10 value

