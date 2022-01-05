#tag @s add page_setup
clear @s #ex3:all{item:1}
clear @s #ex3:all{elytra:1b}
clear @s #ex3:all{armor_item:1}
execute if entity @s[tag=creative] run clear @s #ex3:all{gui_item:1}
execute if entity @s[tag=creative] run clear @s #ex3:all{operator_book:1}
tag @s add drop
#function ex3:general/inventory_changed/execution

function ex3:items/team_armor/setup
function ex3:items/gui/main
execute if score @s drop matches 1 run tag @s[tag=skill1_ready] remove skill1_ready
execute if score @s drop matches 1 run tag @s[tag=skill2_ready] remove skill2_ready
execute if score @s drop matches 1 run tag @s[tag=skill3_ready] remove skill3_ready


#矢の自己リロード実行
execute store result score #slot value run data get entity @s SelectedItemSlot
execute if entity @s[scores={weapon=4..5},tag=!skill_no_drop] run tag @s add items_that_use_arrow
execute if entity @s[tag=items_that_use_arrow] if score @s weapon_pos = #slot value run tag @s add self_reload
execute if entity @s[tag=items_that_use_arrow] run tag @s remove items_that_use_arrow
scoreboard players reset #slot value

scoreboard players operation #- number = @s number
execute as @e[tag=arrow-reload-time] if score @s number = #- number run tag @s add arrow-reloading
execute if entity @e[tag=arrow-reloading,limit=1] run tag @s[tag=self_reload] remove self_reload
execute as @e[tag=arrow-reloading] run tag @s remove arrow-reloading
scoreboard players reset #-

execute as @s[tag=self_reload] run function ex3:items/auxiliary/arrow/reload/self/check


execute if entity @s[tag=self_reload] run tag @s remove self_reload