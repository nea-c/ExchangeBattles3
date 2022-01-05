#ロビー
#0°回転
setblock 0 120 0 minecraft:structure_block{mode:"LOAD",posX:0,posY:1,posZ:0,name:"ex3:lobby/magenta_ground_parts",rotation:"NONE"}
setblock 1 120 0 redstone_block
fill 0 120 0 1 120 0 air

#90°回転
setblock 0 120 0 minecraft:structure_block{mode:"LOAD",posX:0,posY:1,posZ:0,name:"ex3:lobby/lime_ground_parts",rotation:"CLOCKWISE_90"}
setblock 1 120 0 redstone_block
fill 0 120 0 1 120 0 air

#180°回転
setblock 0 120 0 minecraft:structure_block{mode:"LOAD",posX:0,posY:1,posZ:0,name:"ex3:lobby/magenta_ground_parts",rotation:"CLOCKWISE_180"}
setblock 1 120 0 redstone_block
fill 0 120 0 1 120 0 air

#270°回転
setblock 0 120 0 minecraft:structure_block{mode:"LOAD",posX:0,posY:1,posZ:0,name:"ex3:lobby/lime_ground_parts",rotation:"COUNTERCLOCKWISE_90"}
setblock 1 120 0 redstone_block
fill 0 120 0 1 120 0 air



#メニューテレポーター
setblock 0 120 0 minecraft:structure_block{mode:"LOAD",posX:-3,posY:2,posZ:-3,name:"ex3:lobby/menu_teleporter",rotation:"NONE"}
setblock 1 120 0 redstone_block
fill 0 120 0 1 120 0 air


#チームシンボル
#抜ける
setblock 0 120 0 minecraft:structure_block{mode:"LOAD",posX:-2,posY:2,posZ:9,name:"ex3:lobby/team_symbol/leave",rotation:"NONE"}
setblock 1 120 0 redstone_block
fill 0 120 0 1 120 0 air


#エメラルド
setblock 0 120 0 minecraft:structure_block{mode:"LOAD",posX:-10,posY:2,posZ:-9,name:"ex3:lobby/team_symbol/emerald",rotation:"NONE"}
setblock 1 120 0 redstone_block
fill 0 120 0 1 120 0 air


#プルプァ
setblock 0 120 0 minecraft:structure_block{mode:"LOAD",posX:8,posY:2,posZ:-9,name:"ex3:lobby/team_symbol/purpur",rotation:"NONE"}
setblock 1 120 0 redstone_block
fill 0 120 0 1 120 0 air


#チーム看板(エメラルド、プルプァ、観戦)の設置

execute if score #team_change value matches 1 positioned 0 123 0 run function ex3:lobby/team_signs
setblock 0 123 9 air
setblock 0 123 9 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/team_change/spectator/toggle"}}',Text2:'{"text":"参加/観戦","color":"white","bold":true}',Text3:'{"text":"右クリック","color":"black"}',Text4:'{"text":"------------------","color":"black"}'}




#メニュールーム
setblock 0 99 0 minecraft:structure_block{mode:"LOAD",posX:-9,posY:1,posZ:-5,name:"ex3:lobby/menu_room",rotation:"NONE"}
setblock 1 99 0 redstone_block
fill 0 99 0 1 99 0 air



#function ex3:lobby/menu/signs

fill 8 102 5 8 101 5 air
setblock 8 102 5 minecraft:oak_wall_sign[facing=west]{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/lock/close"}}',Text2:'{"text":"メニュー部屋を閉鎖","color":"black","bold":true}',Text3:'{"text":"右クリック","color":"black"}',Text4:'{"text":"------------------","color":"black"}'} destroy
setblock 8 101 5 minecraft:oak_wall_sign[facing=west]{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/lock/open"}}',Text2:'{"text":"メニュー部屋を開放","color":"black","bold":true}',Text3:'{"text":"右クリック","color":"black"}',Text4:'{"text":"------------------","color":"black"}'} destroy


setblock -8 102 5 air
setblock -8 102 5 minecraft:oak_wall_sign[facing=east]{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"execute positioned 0 103 4 if entity @a[distance=..15,limit=1] as @a[distance=..15] run tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"yellow\\"},{\\"text\\":\\" メニューを修繕しました\\"}]"}}',Text2:'{"text":"メニュー故障時に","color":"black","clickEvent":{"action":"run_command","value":"playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1"}}',Text3:'{"text":"押してください","color":"black","clickEvent":{"action":"run_command","value":"execute positioned 0 102 12 run function ex3:lobby/menu/closed"}}',Text4:'{"text":"------------------","color":"black"}'} destroy

execute positioned 0 102 12 run function ex3:lobby/menu/closed