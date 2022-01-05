#3点リーダ
scoreboard players add #ready-title_animation value 1

execute if score #ready-title_animation value matches 1 run title @a times 0 10000 5


execute if score #ready-title_animation value matches 1 run title @a title ["",{"text":"|","bold":true}]
execute if score #ready-title_animation value matches 1 as @a at @s run playsound minecraft:block.lever.click master @s ~ ~-500 ~ 0 1 1

execute if score #ready-title_animation value matches 2 run title @a title ["",{"text":"A","bold":true}]

execute if score #ready-title_animation value matches 3 run title @a title ["",{"text":"|A|","bold":true}]
execute if score #ready-title_animation value matches 3 as @a at @s run playsound minecraft:block.lever.click master @s ~ ~-500 ~ 0 1 1

execute if score #ready-title_animation value matches 4 run title @a title ["",{"text":"EAD","bold":true}]

execute if score #ready-title_animation value matches 5 run title @a title ["",{"text":"|EAD|","bold":true}]
execute if score #ready-title_animation value matches 5 as @a at @s run playsound minecraft:block.lever.click master @s ~ ~-500 ~ 0 1 1

execute if score #ready-title_animation value matches 7 run title @a title ["",{"text":"READY","bold":true}]

execute if score #ready-title_animation value matches 8 run title @a title ["",{"text":"|READY|","bold":true}]
execute if score #ready-title_animation value matches 8 as @a at @s run playsound minecraft:block.lever.click master @s ~ ~-500 ~ 0 1 1

execute if score #ready-title_animation value matches 9 run title @a title ["",{"text":"READY","bold":true}]




execute unless score #ready-title_animation value matches 9 run schedule function ex3:game/start/ready-title_animation 1t append
execute if score #ready-title_animation value matches 9 run schedule function ex3:game/start/countdown 1s append