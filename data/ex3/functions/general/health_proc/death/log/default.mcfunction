
execute if score @s number = @s last_hurt_by run tag @s add slain_me

execute if entity @s[tag=death_player,tag=!slain_me] run tag @s add deathlog.slain

execute if entity @a[limit=1] run tellraw @a[tag=deathlog.slain] ["",{"text":"×","bold":true,"color":"#ee0000"},{"text":" "},{"selector":"@s"},{"text":" ← "},{"selector":"@a[tag=slain_by,limit=1]"},{"nbt":"deathlog.byitems","storage":"ex3:","interpret": true}]
execute if entity @a[limit=1] run tellraw @a[tag=!deathlog.slain] ["",{"text":"×","bold":true,"color":"#ee0000"},{"text":" "},{"selector":"@s"},{"text":" ← "},{"selector":"@a[tag=slain_by,limit=1]"}]

tag @s remove deathlog.slain
tag @s remove slain_me