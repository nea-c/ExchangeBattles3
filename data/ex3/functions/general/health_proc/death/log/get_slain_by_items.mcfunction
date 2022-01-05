data remove block 0 0 0 Items[]
scoreboard players operation #item value = @s weapon
function ex3:items/loot/weapon
data modify block 0 0 0 Items[{Slot:0b}].Slot set value 1b
scoreboard players operation #item value = @s support
function ex3:items/loot/support
data modify block 0 0 0 Items[{Slot:0b}].Slot set value 2b
scoreboard players operation #item value = @s skill1
function ex3:items/loot/skill
data modify block 0 0 0 Items[{Slot:0b}].Slot set value 3b
scoreboard players operation #item value = @s skill2
function ex3:items/loot/skill
data modify block 0 0 0 Items[{Slot:0b}].Slot set value 4b
scoreboard players operation #item value = @s skill3
function ex3:items/loot/skill
data modify block 0 0 0 Items[{Slot:0b}].Slot set value 5b

scoreboard players reset #item

scoreboard players operation #health_int value = @a[tag=slain_by] health
scoreboard players operation #health_int value /= #10 value
scoreboard players operation #health_frac value = @a[tag=slain_by] health
scoreboard players operation #health_frac value %= #10 value

execute if score #health_int value matches ..-1 run scoreboard players set #health_int value 0

loot replace block 0 0 0 container.10 loot ex3:general/deathlog.item

data modify storage ex3: deathlog.byitems set value '[{"text":" "},{"text":"[+]","color":"gray","hoverEvent":{"action":"show_text","value":{"nbt":"Items[{Slot:10b}].tag.display.Name","block":"0 0 0","interpret": true}}}]'
