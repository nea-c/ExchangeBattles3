#デス処理
scoreboard players operation #- number = @s number
scoreboard players operation #- team_number = @s team_number
tag @s add death_player

function ex3:general/effects/clear
tag @s remove magic_protect
execute if score #playing value matches 0..1 run effect give @s luck 5 9
execute if entity @s[tag=skill2-melt_now] run tag @s remove skill2-melt_now
execute if entity @s[tag=skill24-now] run tag @s remove skill24-now

execute as @e[scores={number=0..},type=!player,tag=fixed,tag=death-owner-end] if score @s number = #- number run tag @s add end--
execute as @e[scores={number=0..},type=!player,tag=!fixed,tag=!not-death-with] if score @s number = #- number run kill @s

function ex3:items/skill/setup

summon marker 0 0 0 {Tags:["not-blind-time","this","fixed"]}
scoreboard players operation @e[tag=this] number = @s number
scoreboard players set @e[tag=this] value 60
tag @e[tag=this] remove this
effect give @s minecraft:blindness 3 0 true
execute if score #playing value matches 3 run gamemode spectator @s[gamemode=!spectator]


execute if entity @s[scores={last_hurt_by=1..}] as @a if score @s number = @a[tag=death_player,limit=1] last_hurt_by run tag @s add slain_by
execute if entity @a[tag=slain_by,limit=1] as @a[tag=slain_by] run function ex3:general/health_proc/death/log/get_slain_by_items
execute if entity @a[tag=slain_by,limit=1] if entity @s[scores={damage_source=1..}] run function ex3:general/health_proc/death/log/damage_source
execute if entity @a[tag=slain_by,limit=1] unless entity @s[scores={damage_source=1..}] run function ex3:general/health_proc/death/log/default

scoreboard players reset #health_int
scoreboard players reset #health_frac
data remove storage ex3: deathlog

execute unless entity @a[tag=slain_by,limit=1] run tag @s add flag
#execute if entity @s[tag=flag,scores={last_hurt_by=-11..-1}] if score #gamemode counter matches 2 if entity @e[tag=bear,limit=1] run function ex3
execute if entity @s[tag=flag] run tellraw @a ["",{"text":"×","bold":true,"color":"#ee0000"},{"text":" "},{"selector":"@s"}]
execute if entity @s[tag=flag] run tag @s remove flag



#killしたプレイヤーがウェポン6所持時
execute if entity @s[scores={damage_source=10006}] if entity @a[tag=!death_player,tag=slain_by,limit=1] as @a[tag=!death_player,tag=slain_by] run function ex3:items/weapon/0006/kill_heal


execute if score #playing value matches 3 if entity @a[tag=!death_player,tag=slain_by,limit=1] as @a[tag=!death_player,tag=slain_by] unless score @s team_number = @a[tag=death_player,limit=1] team_number run scoreboard players add @s total_kill 1
execute if score #playing value matches 3 run scoreboard players add @s total_death 1


title @s times 0 20 40
title @s title ["",{"text":"You died!","color":"#ee0000"}]
title @s subtitle {"text":""}


execute at @s run playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 1 0
execute at @s run particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 2 force @a
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0.4 40 force @a

function ex3:general/health_proc/max-set
scoreboard players operation #health value = @s max_health
scoreboard players operation #health value *= #10 value
scoreboard players operation @s health = #health value
scoreboard players operation @s health_display = @s max_health
scoreboard players reset #health

execute if score #playing value matches 3 if score #timer value matches 1 run function ex3:general/health_proc/respawn/check

execute if entity @a[tag=slain_by,limit=1] as @a[tag=slain_by] run tag @s remove slain_by
execute if entity @a[tag=death_player,limit=1] as @a[tag=death_player] run tag @s remove death_player

scoreboard players reset @s damage_source
scoreboard players reset @s last_hurt_by
scoreboard players reset @s keep_hurt_by

scoreboard players reset #-