#チームアーマー
setblock ~ ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"チームアーマー","bold":true,"color":"black","clickEvent":{"action":"run_command","value":"execute positioned 8 ~1 ~ run function ex3:lobby/menu/parts/team_armor/open"}}',Text3:'',Text4:'{"text":"------------------","color":"black"}'}

execute if score #setting_team_armor value matches 4 run data modify block ~ ~ ~ Text3 set value '{"text":"足のみ","color":"black"}'
execute if score #setting_team_armor value matches 3 run data modify block ~ ~ ~ Text3 set value '{"text":"頭のみ","color":"black"}'
execute if score #setting_team_armor value matches 2 run data modify block ~ ~ ~ Text3 set value '{"text":"胴のみ","color":"black"}'
execute if score #setting_team_armor value matches 1 run data modify block ~ ~ ~ Text3 set value '{"text":"全身","color":"black"}'
execute if score #setting_team_armor value matches 0 run data modify block ~ ~ ~ Text3 set value '{"text":"なし","color":"black"}'
