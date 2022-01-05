#3点リーダ

scoreboard players reset #ready-title_animation
scoreboard players add #countdown value 1


execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~-500 ~ 0 1 1



execute if score #countdown value matches 1 run title @a subtitle ["",{"text":"-5-","bold":true}]

execute if score #countdown value matches 2 run title @a subtitle ["",{"text":"-4-","bold":true}]

execute if score #countdown value matches 3 run title @a subtitle ["",{"text":"-3-","bold":true}]

execute if score #countdown value matches 4 run title @a subtitle ["",{"text":"-2-","bold":true}]

execute if score #countdown value matches 5 run title @a subtitle ["",{"text":"-1-","bold":true}]




execute unless score #countdown value matches 5.. run schedule function ex3:game/start/countdown 1s append
execute if score #countdown value matches 5.. run schedule function ex3:game/start/combat 1s append