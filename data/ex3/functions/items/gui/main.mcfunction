
scoreboard players set #tab value 0
scoreboard players operation #tab value = @s tab
scoreboard players operation #tab value /= #10000 value
execute if score #tab value matches 0 if entity @s[tag=!gui_change,tag=!creative] run function ex3:items/gui/check
execute if score #tab value matches 3 if entity @s[tag=!gui_change,tag=!creative] run function ex3:items/gui/skill/select_slot/check
execute if score #tab value matches 5 if entity @s[tag=!gui_change,tag=!creative] run function ex3:items/gui/close/exstorage/check

scoreboard players reset #tab

execute if entity @s[scores={max_health=0..}] run function ex3:general/health_proc/max-set
execute if entity @s[tag=gui_change] run function ex3:items/gui/set
