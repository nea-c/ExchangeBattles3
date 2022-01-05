#スキル
execute if score @s close_page matches 1 run function ex3:items/gui/close/page1
execute if score @s close_page matches 2 run function ex3:items/gui/close/page2
execute if score @s close_page matches 3 run function ex3:items/gui/close/page3
execute if score @s close_page matches 4 run function ex3:items/gui/close/page4

execute if score @s close_page matches 2.. run loot replace block 0 0 0 container.3 loot ex3:items/page/back
execute if score @s close_page matches ..0 run loot replace block 0 0 0 container.5 loot ex3:items/page/next
