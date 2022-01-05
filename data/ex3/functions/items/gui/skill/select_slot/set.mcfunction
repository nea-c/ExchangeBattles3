#スキルSetup

tag @s add select_page
scoreboard players operation #tab value = @s tab
scoreboard players operation #tab value %= #10000 value

scoreboard players operation #item value = #tab value
scoreboard players set #item value2 4
function ex3:items/gui/skill/page_item

scoreboard players operation #item value = #tab value
scoreboard players set #item tab 1
scoreboard players set #item value2 11
function ex3:items/gui/skill/page_item

scoreboard players operation #item value = #tab value
scoreboard players set #item tab 2
scoreboard players set #item value2 13
function ex3:items/gui/skill/page_item

scoreboard players operation #item value = #tab value
scoreboard players set #item tab 3
scoreboard players set #item value2 15
function ex3:items/gui/skill/page_item

scoreboard players operation #item value = #tab value
scoreboard players set #item tab 4
scoreboard players set #item value2 22
function ex3:items/gui/skill/page_item


tag @s remove select_page

scoreboard players reset #tab