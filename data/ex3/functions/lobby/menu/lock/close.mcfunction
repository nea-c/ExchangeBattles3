#メニュールーム閉鎖
execute unless score #menu_lock value matches 1 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1
execute unless score #menu_lock value matches 1 positioned 0 103 4 run tag @a[distance=..15,gamemode=!spectator,tag=!menu_owner] add menu_owner
execute unless score #menu_lock value matches 1 run tellraw @a [{"text":"[システム]","color":"yellow"},{"text":" メニュー部屋を閉鎖しました"},{"text":"\n[システム] 以降は "},{"selector":"@a[tag=menu_owner]"},{"text":" が入退室可能です"}]
execute unless score #menu_lock value matches 1 run scoreboard players set #menu_lock value 1

execute positioned 0 101 9 if block ~ ~ ~ oak_sign run setblock ~ ~ ~ minecraft:air