#リスポーン処理
execute if entity @s[scores={value=1..}] run scoreboard players remove @s value 1

scoreboard players operation #- number = @s number
execute as @a if score @s number = #- number run tag @s add respawning-owner
scoreboard players reset #-

execute if score #conclusion value matches 1 if entity @s[scores={value=21..},tag=!respawn-change] positioned as @a[tag=respawning-owner,limit=1] run function ex3:general/health_proc/respawn/search/start

scoreboard players add @s value2 1
execute if score @s value2 matches 2.. run scoreboard players reset @s value2

execute if entity @s[scores={value=0..20}] if entity @a[tag=respawning-owner,limit=1] as @a[tag=respawning-owner] run effect clear @s blindness
execute if score @s value2 matches 1 if entity @s[scores={value=0..20}] if entity @a[tag=respawning-owner,limit=1] as @a[tag=respawning-owner] run function ex3:general/health_proc/respawn/tp

execute if entity @s[scores={value=0}] if entity @a[tag=respawning-owner,limit=1] as @a[tag=respawning-owner] run function ex3:general/health_proc/respawn/complete
execute if entity @s[scores={value=0}] if entity @a[tag=respawning-owner,limit=1] run kill @s

execute if entity @a[tag=respawning-owner,limit=1] as @a[tag=respawning-owner] run tag @s remove respawning-owner
