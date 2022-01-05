#盾長押し(防御開始から一定時間無効化のため)の検知用
scoreboard players operation #- number = @s number
execute as @e[tag=shield-count] if score @s number = #- number run tag @s add now-shield-count
#unless entity @e[tag=now-shield-count]
execute unless entity @e[tag=now-shield-count,limit=1] at @s run summon marker 0 0 0 {Tags:["shield-count","this","shield-counted"]}
execute unless entity @e[tag=now-shield-count,limit=1] run scoreboard players operation @e[tag=this,limit=1] number = @s number
execute unless entity @e[tag=now-shield-count,limit=1] run tag @e[tag=this] remove this

execute as @e[tag=shield-count] if score @s number = #- number run tag @s add now-shield-count
#if entity @e[tag=now-shield-count]
execute if entity @e[tag=now-shield-count,limit=1] run scoreboard players add @e[tag=now-shield-count] value 1
execute if entity @e[tag=now-shield-count,limit=1] run tag @e[tag=now-shield-count] add shield-counted
execute if entity @e[tag=now-shield-count,limit=1] run tag @e[tag=now-shield-count] remove now-shield-count

scoreboard players reset #-