

scoreboard players operation #item value2 = @s damage_source
scoreboard players operation #item value = #item value2

scoreboard players operation #item value2 /= #10000 value
scoreboard players operation #item value %= #10000 value

execute if score #item value2 matches 1 run function ex3:items/loot/weapon
execute if score #item value2 matches 2 run function ex3:items/loot/support
execute if score #item value2 matches 3 run function ex3:items/loot/skill

execute if score @s number = @s last_hurt_by run tag @s add slain_me

execute if entity @s[tag=death_player,tag=!slain_me] run tag @s add deathlog.slain

execute if entity @a[limit=1] run tellraw @a[tag=deathlog.slain] ["",{"text":"×","bold":true,"color":"#ee0000"},{"text":" "},{"selector":"@s"},{"text":" ← "},{"selector":"@a[tag=slain_by,limit=1]"},{"text":"("},{"nbt":"Items[{Slot:0b}].tag.display.Name","block":"0 0 0","interpret":true},{"text":")"},{"nbt":"deathlog.byitems","storage":"ex3:","interpret": true}]
execute if entity @a[limit=1] run tellraw @a[tag=!deathlog.slain] ["",{"text":"×","bold":true,"color":"#ee0000"},{"text":" "},{"selector":"@s"},{"text":" ← "},{"selector":"@a[tag=slain_by,limit=1]"},{"text":"("},{"nbt":"Items[{Slot:0b}].tag.display.Name","block":"0 0 0","interpret":true},{"text":")"}]

tag @s remove deathlog.slain
tag @s remove slain_me

scoreboard players reset #item