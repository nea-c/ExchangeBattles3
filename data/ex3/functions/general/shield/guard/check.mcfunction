#盾長押し(防御開始から一定時間無効化のため)の検知用
scoreboard players operation #p-rot number = @s number
execute as @e[tag=shield-count,scores={value=10..}] if score @s number = #p-rot number run tag @s add now-shield-guard

execute store result score #p-rot value run data get entity @s Rotation[0] 100
execute store result score #p-rot value2 run data get entity @s Rotation[1] 100

scoreboard players operation #p-rot value -= #rot value
execute if score #p-rot value matches ..-1 run scoreboard players operation #p-rot value *= #-1 value
scoreboard players remove #p-rot value 18000
scoreboard players operation #p-rot value2 += #rot value2

#execute if score #p-rot value matches -5000..5000 if score #p-rot value2 matches -2000..2000 run tag @s add shield-guard-ok
execute if score #p-rot value matches -9000..9000 if score #p-rot value2 matches -4500..4500 run tag @s add shield-guard-ok

execute if entity @s[tag=shield-guard-ok] if entity @e[tag=now-shield-guard,limit=1] run tag @s add shield-guard

execute if entity @s[tag=shield-guard-ok] run tag @s remove shield-guard-ok

scoreboard players reset #p-rot number

#tellraw @s [{"score":{"name": "#p-rot","objective": "value"}},{"text":"   "},{"score":{"name": "#p-rot","objective": "value2"}}]