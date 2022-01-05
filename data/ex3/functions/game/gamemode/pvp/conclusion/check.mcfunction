#コンクルージョン

playsound minecraft:entity.wither.spawn master @a 0 8 0 50 0.5
tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"戦闘エリアが縮小します","color":"#ee0000","bold":true}]

bossbar set ex3:game visible false

bossbar set ex3:game value 100
bossbar set ex3:game max 100

data modify storage ex3:game bossbar.time set value '[{"text":" "},{"text":"<","bold":true},{"text":" "},{"text":"延長戦","bold":true,"color":"#ee0000"},{"text":" "},{"text":">","bold":true}]'

bossbar set ex3:game visible true

#ボーダーのセンターをランダム位置に
summon marker ~ ~ ~ {Tags:["this","border"]}
spreadplayers 0 0 0 50 false @e[tag=this,limit=1]
execute positioned as @e[tag=this] run worldborder center ~ ~
execute store result score @a respawn-x run data get entity @e[tag=this,limit=1] Pos[0] 10
execute store result score @a respawn-z run data get entity @e[tag=this,limit=1] Pos[2] 10
execute as @e[tag=this] at @s run tp @s ~ 1 ~
tag @e[tag=this] remove this


worldborder set 250
worldborder warning time 0
worldborder warning distance 5
worldborder damage buffer 0
worldborder damage amount 1
worldborder set 27 60


execute if score #gamemode value matches 1102 run scoreboard players set #emerald value 0
execute if score #gamemode value matches 1102 run scoreboard players set #purpur value 0

execute if score #gamemode value matches 1104 run scoreboard players set #emerald value 0
execute if score #gamemode value matches 1104 run scoreboard players set #purpur value 0

scoreboard players set #conclusion value 1