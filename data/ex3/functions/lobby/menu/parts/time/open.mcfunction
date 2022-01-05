#時刻
fill ~ ~2 ~ ~-16 ~-2 ~ minecraft:air
fill ~ ~2 ~1 ~-16 ~-2 ~1 minecraft:gray_concrete
execute unless score #playsound_invalid value matches 1 run playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2
execute unless score #setting_time_change value matches 0.. run scoreboard players operation #setting_time_change value = #setting_time value

#戻る
setblock ~-3 ~-2 ~1 minecraft:warped_stem[axis=z]
setblock ~-3 ~-2 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"戻る","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black","clickEvent":{"action":"run_command","value":"playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2"}}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"execute positioned 0 102 12 run function ex3:lobby/menu/opened"}}'}


fill ~-5 ~-1 ~1 ~-9 ~-1 ~1 dark_oak_log[axis=z]
#-1000
setblock ~-5 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"-1000","bold":true,"color":"black"}',Text3:'["",{"text":"右クリック","color":"black"}]',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/time/1000/minus"}}'}
#-100
setblock ~-6 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"-100","bold":true,"color":"black"}',Text3:'["",{"text":"右クリック","color":"black"}]',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/time/100/minus"}}'}
#決定ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
setblock ~-7 ~-1 ~1 gold_block
#朝
execute if score #setting_time_change value matches 1000 run scoreboard players set #setting_time_template value 1
execute if score #setting_time_change value matches 1000 run setblock ~-7 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'["",{"score":{"name":"#setting_time_change","objective":"value"},"bold":true,"color":"black"},{"text":"(朝)","bold":true,"color":"black"}]',Text3:'["",{"text":"右クリック","color":"black"}]',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/time/decision"}}'}
#昼
execute if score #setting_time_change value matches 6000 run scoreboard players set #setting_time_template value 1
execute if score #setting_time_change value matches 6000 run setblock ~-7 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'["",{"score":{"name":"#setting_time_change","objective":"value"},"bold":true,"color":"black"},{"text":"(昼)","bold":true,"color":"black"}]',Text3:'["",{"text":"右クリック","color":"black"}]',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/time/decision"}}'}
#夕
execute if score #setting_time_change value matches 13000 run scoreboard players set #setting_time_template value 1
execute if score #setting_time_change value matches 13000 run setblock ~-7 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'["",{"score":{"name":"#setting_time_change","objective":"value"},"bold":true,"color":"black"},{"text":"(夕)","bold":true,"color":"black"}]',Text3:'["",{"text":"右クリック","color":"black"}]',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/time/decision"}}'}
#夜
execute if score #setting_time_change value matches 18000 run scoreboard players set #setting_time_template value 1
execute if score #setting_time_change value matches 18000 run setblock ~-7 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'["",{"score":{"name":"#setting_time_change","objective":"value"},"bold":true,"color":"black"},{"text":"(夜)","bold":true,"color":"black"}]',Text3:'["",{"text":"右クリック","color":"black"}]',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/time/decision"}}'}
#その他
execute unless score #setting_time_template value matches 1 run setblock ~-7 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'["",{"score":{"name":"#setting_time_change","objective":"value"},"bold":true}]',Text3:'["",{"text":"右クリック","color":"black"}]',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/time/decision"}}'}
scoreboard players reset #setting_time_template
#ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー


#+100
setblock ~-8 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"+100","bold":true,"color":"black"}',Text3:'["",{"text":"右クリック","color":"black"}]',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/time/100/plus"}}'}
#+1000
setblock ~-9 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"+1000","bold":true,"color":"black"}',Text3:'["",{"text":"右クリック","color":"black"}]',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/time/1000/plus"}}'}

fill ~-10 ~-1 ~1 ~-13 ~-1 ~1 spruce_log[axis=z]
#朝(1000)
setblock ~-10 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"朝(1000)","bold":true,"color":"black"}',Text3:'["",{"text":"右クリック","color":"black"}]',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/time/morning"}}'}
#昼(6000)
setblock ~-11 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"昼(6000)","bold":true,"color":"black"}',Text3:'["",{"text":"右クリック","color":"black"}]',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/time/noon"}}'}
#夕(13000)
setblock ~-12 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"夕(13000)","bold":true,"color":"black"}',Text3:'["",{"text":"右クリック","color":"black"}]',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/time/evening"}}'}
#夜(18000)
setblock ~-13 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"夜(18000)","bold":true,"color":"black"}',Text3:'["",{"text":"右クリック","color":"black"}]',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/time/midnight"}}'}
execute if score #playsound_invalid value matches 1 run scoreboard players reset #playsound_invalid
