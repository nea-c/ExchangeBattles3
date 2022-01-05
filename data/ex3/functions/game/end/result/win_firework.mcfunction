scoreboard players add #firework value 1

execute if score #firework value matches ..8 if score #emerald_win value matches 1 as @a[team=emerald] at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;65280],FadeColors:[I;65280]}]}}}}
execute if score #firework value matches ..8 if score #purpur_win value matches 1 as @a[team=purpur] at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16711935],FadeColors:[I;16711935]}]}}}}

execute if score #firework value matches ..8 if score #battleroyal_win value matches 1.. as @a if score @s number = #battleroyal_win value at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16776960],FadeColors:[I;16776960]}]}}}}

execute if score #firework value matches ..8 if score #pve_player_win value matches 1 as @a[team=pve] at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;53503],FadeColors:[I;53503]}]}}}}


execute if score #firework value matches ..8 run schedule function ex3:game/end/result/win_firework 1s
execute if score #firework value matches 5 run title @a times 10 40 10
execute if score #firework value matches 5 run title @a title [{"text":"ロビーへ帰還します","color":"white"}]

execute if score #firework value matches 9 run function ex3:lobby/back
execute if score #firework value matches 9 if score #game_auto_start value matches 1 run scoreboard players set #auto_start_chat_lobby value 1
execute if score #firework value matches 9 if score #game_auto_start value matches 1 run function ex3:game/auto_start/execution
execute if score #firework value matches 9 if score #team_auto_change value matches 2 run function ex3:game/team_random/2team
execute if score #firework value matches 9 if score #team_auto_change value matches 2 run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"text":"チーム","color":"green"},{"text":"を"},{"text":"2チーム","color":"light_purple"},{"text":"に振り分けました"}]
execute if score #firework value matches 9 run scoreboard players set #playing value 0
execute if score #firework value matches 9 run scoreboard players reset #firework