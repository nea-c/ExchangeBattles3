scoreboard players set #distance value 0
summon marker ~ ~ ~ {Tags:["distance"]}
tp @e[tag=distance,limit=1] ~ ~ ~ facing entity @s feet

execute at @e[tag=distance,limit=1] if entity @s[distance=12.8..25.6] run scoreboard players add #distance value 128
execute at @e[tag=distance,limit=1] if entity @s[distance=12.8..25.6] run tp @e[tag=distance,limit=1] ^ ^ ^12.8

execute at @e[tag=distance,limit=1] if entity @s[distance=6.4..12.8] run scoreboard players add #distance value 64
execute at @e[tag=distance,limit=1] if entity @s[distance=6.4..12.8] run tp @e[tag=distance,limit=1] ^ ^ ^6.4

execute at @e[tag=distance,limit=1] if entity @s[distance=3.2..6.4] run scoreboard players add #distance value 32
execute at @e[tag=distance,limit=1] if entity @s[distance=3.2..6.4] run tp @e[tag=distance,limit=1] ^ ^ ^3.2

execute at @e[tag=distance,limit=1] if entity @s[distance=1.6..3.2] run scoreboard players add #distance value 16
execute at @e[tag=distance,limit=1] if entity @s[distance=1.6..3.2] run tp @e[tag=distance,limit=1] ^ ^ ^1.6

execute at @e[tag=distance,limit=1] if entity @s[distance=0.8..1.6] run scoreboard players add #distance value 8
execute at @e[tag=distance,limit=1] if entity @s[distance=0.8..1.6] run tp @e[tag=distance,limit=1] ^ ^ ^0.8

execute at @e[tag=distance,limit=1] if entity @s[distance=0.4..0.8] run scoreboard players add #distance value 4
execute at @e[tag=distance,limit=1] if entity @s[distance=0.4..0.8] run tp @e[tag=distance,limit=1] ^ ^ ^0.4

execute at @e[tag=distance,limit=1] if entity @s[distance=0.2..0.4] run scoreboard players add #distance value 2
execute at @e[tag=distance,limit=1] if entity @s[distance=0.2..0.4] run tp @e[tag=distance,limit=1] ^ ^ ^0.2

execute at @e[tag=distance,limit=1] if entity @s[distance=0.1..0.2] run scoreboard players add #distance value 1

#後処理
kill @e[tag=distance,limit=1]