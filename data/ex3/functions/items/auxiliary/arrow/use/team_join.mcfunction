#弓、クロスボウ使用等時に矢にいろいろ付与
execute anchored eyes positioned ^ ^ ^ run tag @e[type=minecraft:arrow,distance=..3.5,scores={team_number=1..}] add team_joined
execute anchored eyes positioned ^ ^ ^ run tag @e[type=minecraft:arrow,tag=!team_joined,distance=..3.5,sort=nearest,limit=1] add setup
execute anchored eyes positioned ^ ^ ^ as @e[type=minecraft:arrow,tag=!team_joined,distance=..3.5,nbt={crit:1b},sort=nearest,limit=1] store result entity @s damage double 0.1 run data get entity @s damage 12
execute anchored eyes positioned ^ ^ ^ as @e[type=minecraft:arrow,tag=!team_joined,distance=..3.5,nbt={crit:1b},sort=nearest,limit=1] run tag @s add crit
execute anchored eyes positioned ^ ^ ^ run data merge entity @e[type=minecraft:arrow,tag=!team_joined,distance=..3.5,nbt={crit:1b},sort=nearest,limit=1] {crit:0b}
execute anchored eyes positioned ^ ^ ^ run scoreboard players operation @e[type=minecraft:arrow,tag=!team_joined,distance=..3.5,sort=nearest,limit=1] number = @s number
execute anchored eyes positioned ^ ^ ^ run scoreboard players operation @e[type=minecraft:arrow,tag=!team_joined,distance=..3.5,sort=nearest,limit=1] team_number = @s team_number
execute anchored eyes positioned ^ ^ ^ run tag @e[type=minecraft:arrow,distance=..3.5,scores={team_number=1..}] remove team_joined
execute anchored eyes positioned ^ ^ ^ if entity @s[scores={support=13}] run function ex3:items/support/0013/arrow
execute anchored eyes positioned ^ ^ ^ if entity @s[tag=skill33-now] run function ex3:items/skill/0033/arrow
execute anchored eyes positioned ^ ^ ^ if entity @s[tag=skill35-now] run function ex3:items/skill/0035/arrow


