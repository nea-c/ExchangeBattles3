#メニュールームへ入ったりする処理
execute positioned 0 123 0 run particle minecraft:firework ~ ~1 ~ 0.2 0.2 0.2 0 1 force
execute positioned 0 102 0 run particle minecraft:firework ~ ~1 ~ 0.2 0.2 0.2 0 1 force

#メニュールーム非ロック時
execute positioned 0 123 0 if entity @a[distance=..0.7,tag=!menu_leave,gamemode=!spectator,limit=1] as @a[distance=..0.7,tag=!menu_leave,gamemode=!spectator] if score #menu_lock value matches 0 run tag @s add menu_enter

#メニュールームロック時
execute positioned 0 123 0 if entity @a[distance=..0.7,tag=!menu_leave,tag=menu_owner,gamemode=!spectator,limit=1] as @a[distance=..0.7,tag=!menu_leave,tag=menu_owner,gamemode=!spectator] if score #menu_lock value matches 1 run tag @s add menu_enter



execute positioned 0 123 0 if entity @a[distance=..0.7,tag=menu_enter,limit=1] as @a[distance=..0.7,tag=menu_enter] at @s run tp @s 0 102 0 0 0
execute positioned 0 102 0 if entity @a[distance=0.7..8,tag=menu_enter,limit=1] as @a[distance=0.7..8,tag=menu_enter] run tag @s remove menu_enter


execute positioned 0 102 0 if entity @a[distance=..0.7,tag=!menu_enter,gamemode=!spectator,limit=1] as @a[distance=..0.7,tag=!menu_enter,gamemode=!spectator] run tag @s add menu_leave
execute positioned 0 102 0 if entity @a[distance=..0.7,tag=menu_leave,limit=1] as @a[distance=..0.7,tag=menu_leave] at @s run tp @s ~ 123 ~
execute positioned 0 123 0 if entity @a[distance=0.7..8,tag=menu_leave,limit=1] as @a[distance=0.7..8,tag=menu_leave] run tag @s remove menu_leave

execute if score #menu_opened value matches 1 positioned 0 103 4 unless entity @a[distance=..15] positioned 0 102 12 run function ex3:lobby/menu/closed
