#スキル

scoreboard players operation #page value = @s skill_page
scoreboard players remove #page value 1
scoreboard players set #page value2 18


scoreboard players operation #item value = #page value
scoreboard players operation #item value *= #page value2
scoreboard players add #item value 1
scoreboard players set #item value2 9
function ex3:items/gui/skill/page_item


scoreboard players operation #item value = #page value
scoreboard players operation #item value *= #page value2
scoreboard players add #item value 2
scoreboard players set #item value2 10
function ex3:items/gui/skill/page_item


scoreboard players operation #item value = #page value
scoreboard players operation #item value *= #page value2
scoreboard players add #item value 3
scoreboard players set #item value2 11
function ex3:items/gui/skill/page_item


scoreboard players operation #item value = #page value
scoreboard players operation #item value *= #page value2
scoreboard players add #item value 4
scoreboard players set #item value2 12
function ex3:items/gui/skill/page_item


scoreboard players operation #item value = #page value
scoreboard players operation #item value *= #page value2
scoreboard players add #item value 5
scoreboard players set #item value2 13
function ex3:items/gui/skill/page_item


scoreboard players operation #item value = #page value
scoreboard players operation #item value *= #page value2
scoreboard players add #item value 6
scoreboard players set #item value2 14
function ex3:items/gui/skill/page_item


scoreboard players operation #item value = #page value
scoreboard players operation #item value *= #page value2
scoreboard players add #item value 7
scoreboard players set #item value2 15
function ex3:items/gui/skill/page_item


scoreboard players operation #item value = #page value
scoreboard players operation #item value *= #page value2
scoreboard players add #item value 8
scoreboard players set #item value2 16
function ex3:items/gui/skill/page_item


scoreboard players operation #item value = #page value
scoreboard players operation #item value *= #page value2
scoreboard players add #item value 9
scoreboard players set #item value2 17
function ex3:items/gui/skill/page_item


scoreboard players operation #item value = #page value
scoreboard players operation #item value *= #page value2
scoreboard players add #item value 10
scoreboard players set #item value2 18
function ex3:items/gui/skill/page_item


scoreboard players operation #item value = #page value
scoreboard players operation #item value *= #page value2
scoreboard players add #item value 11
scoreboard players set #item value2 19
function ex3:items/gui/skill/page_item


scoreboard players operation #item value = #page value
scoreboard players operation #item value *= #page value2
scoreboard players add #item value 12
scoreboard players set #item value2 20
function ex3:items/gui/skill/page_item


scoreboard players operation #item value = #page value
scoreboard players operation #item value *= #page value2
scoreboard players add #item value 13
scoreboard players set #item value2 21
function ex3:items/gui/skill/page_item


scoreboard players operation #item value = #page value
scoreboard players operation #item value *= #page value2
scoreboard players add #item value 14
scoreboard players set #item value2 22
function ex3:items/gui/skill/page_item


scoreboard players operation #item value = #page value
scoreboard players operation #item value *= #page value2
scoreboard players add #item value 15
scoreboard players set #item value2 23
function ex3:items/gui/skill/page_item


scoreboard players operation #item value = #page value
scoreboard players operation #item value *= #page value2
scoreboard players add #item value 16
scoreboard players set #item value2 24
function ex3:items/gui/skill/page_item


scoreboard players operation #item value = #page value
scoreboard players operation #item value *= #page value2
scoreboard players add #item value 17
scoreboard players set #item value2 25
function ex3:items/gui/skill/page_item


scoreboard players operation #item value = #page value
scoreboard players operation #item value *= #page value2
scoreboard players add #item value 18
scoreboard players set #item value2 26
function ex3:items/gui/skill/page_item


execute if score @s skill_page matches 2.. run loot replace block 0 0 0 container.3 loot ex3:items/page/back
execute if score @s skill_page matches ..1 run loot replace block 0 0 0 container.5 loot ex3:items/page/next

scoreboard players reset #page