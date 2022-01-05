#時刻

#朝
execute if score #setting_time value matches 1000 run scoreboard players set #setting_time_template value 1
execute if score #setting_time value matches 1000 run setblock ~ ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"時刻","bold":true,"color":"black","clickEvent":{"action":"run_command","value":"execute positioned 8 ~1 ~ run function ex3:lobby/menu/parts/time/open"}}',Text3:'["",{"score":{"name": "#setting_time","objective": "value"}},{"text":"(朝)","color":"black"}]',Text4:'{"text":"------------------","color":"black"}'}
#昼
execute if score #setting_time value matches 6000 run scoreboard players set #setting_time_template value 1
execute if score #setting_time value matches 6000 run setblock ~ ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"時刻","bold":true,"color":"black","clickEvent":{"action":"run_command","value":"execute positioned 8 ~1 ~ run function ex3:lobby/menu/parts/time/open"}}',Text3:'["",{"score":{"name": "#setting_time","objective": "value"}},{"text":"(昼)","color":"black"}]',Text4:'{"text":"------------------","color":"black"}'}
#夕
execute if score #setting_time value matches 13000 run scoreboard players set #setting_time_template value 1
execute if score #setting_time value matches 13000 run setblock ~ ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"時刻","bold":true,"color":"black","clickEvent":{"action":"run_command","value":"execute positioned 8 ~1 ~ run function ex3:lobby/menu/parts/time/open"}}',Text3:'["",{"score":{"name": "#setting_time","objective": "value"}},{"text":"(夕)","color":"black"}]',Text4:'{"text":"------------------","color":"black"}'}
#夜
execute if score #setting_time value matches 18000 run scoreboard players set #setting_time_template value 1
execute if score #setting_time value matches 18000 run setblock ~ ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"時刻","bold":true,"color":"black","clickEvent":{"action":"run_command","value":"execute positioned 8 ~1 ~ run function ex3:lobby/menu/parts/time/open"}}',Text3:'["",{"score":{"name": "#setting_time","objective": "value"}},{"text":"(夜)","color":"black"}]',Text4:'{"text":"------------------","color":"black"}'}

#その他
execute unless score #setting_time_template value matches 1 run setblock ~ ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"時刻","bold":true,"color":"black","clickEvent":{"action":"run_command","value":"execute positioned 8 ~1 ~ run function ex3:lobby/menu/parts/time/open"}}',Text3:'["",{"score":{"name": "#setting_time","objective": "value"}}]',Text4:'{"text":"------------------","color":"black"}'}
scoreboard players reset #setting_time_template