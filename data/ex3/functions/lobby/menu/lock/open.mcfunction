#メニュールーム解放
execute unless score #menu_lock value matches 0 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1
execute unless score #menu_lock value matches 0 run tag @a[tag=menu_owner] remove menu_owner
execute unless score #menu_lock value matches 0 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" メニュー部屋を開放しました"}]
execute unless score #menu_lock value matches 0 run scoreboard players set #menu_lock value 0