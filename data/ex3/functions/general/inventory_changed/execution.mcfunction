execute if entity @s[tag=!creative] unless data entity @s Inventory[{tag:{gui_item:1}}] run tag @s add gui_change
execute if entity @s[tag=!creative,scores={tab=5}] unless data entity @s Inventory[{tag:{operator_book:1}}] store result score #op-book value run clear @s #ex3:all{operator_book:1} 0
execute if entity @s[tag=!creative,scores={tab=5}] if score #op-book value matches 0 run tag @s add gui_change

advancement revoke @s only ex3:general/inventory_changed
execute if entity @s[tag=!creative] run function ex3:items/team_armor/setup
function ex3:items/gui/main
execute if entity @s[scores={weapon=4..5}] run tag @s add arrow_check
execute if entity @s[tag=arrow_check] run function ex3:items/auxiliary/arrow/max_check
execute if entity @s[tag=arrow_check] run tag @s remove arrow_check


execute if entity @s[tag=!creative] unless data entity @s Inventory[{tag:{item:1}}] run tag @s add drop

execute if entity @s[tag=drop,tag=!creative] run function ex3:items/weapon/setup

execute if entity @s[tag=drop,tag=!creative] run function ex3:items/support/setup

execute if entity @s[tag=drop,tag=!creative] run function ex3:items/skill/setup

execute if entity @s[tag=drop,tag=!creative] run function ex3:items/auxiliary/setup


execute if entity @s[tag=dont_place1] run tag @s remove dont_place1
execute if entity @s[tag=dont_place2] run tag @s remove dont_place2
execute if entity @s[tag=dont_place3] run tag @s remove dont_place3



execute if entity @s[tag=weapon5_replace,tag=!creative] run function ex3:items/auxiliary/arrow/reload/auto/check
execute if entity @s[tag=weapon5_replace,tag=!creative] run function ex3:items/weapon/0005/set
execute if entity @s[tag=weapon5_replace,tag=!creative] run function ex3:items/auxiliary/arrow/set


#Tag削除
tag @s[tag=weapon5_replace] remove weapon5_replace
scoreboard players reset #op-book
tag @s[tag=drop] remove drop