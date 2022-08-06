execute if entity @s[advancements={ex3:general/attack/dealt/melee/=true}] store result score #damage_source value run data get entity @s SelectedItem.tag.CustomModelData 1
execute if entity @s[advancements={ex3:general/attack/source/weapon/0004=true}] run scoreboard players set #damage_source value 10004
execute if entity @s[advancements={ex3:general/attack/source/weapon/0005=true}] run scoreboard players set #damage_source value 10005
execute if score #damage_source value matches 10000..19999 run tag @s add flag2
execute if entity @s[advancements={ex3:general/attack/dealt/melee/=true},tag=flag2] if score #damage_source value matches 10004..10005 run tag @s remove flag2

execute if entity @s[advancements={ex3:general/attack/dealt/melee/=true}] if score #damage_source value matches 20005 run tag @s add flag2

execute if entity @s[advancements={ex3:general/attack/source/skill/0011=true}] run scoreboard players set #damage_source value 30011
execute if entity @s[advancements={ex3:general/attack/source/skill/0015=true}] run scoreboard players set #damage_source value 30015
execute if entity @s[advancements={ex3:general/attack/dealt/melee/=false}] if score #damage_source value matches 30000..39999 run tag @s add flag2

execute if entity @s[tag=!flag2] run scoreboard players reset @e[tag=hurt,sort=nearest,limit=1] damage_source
execute if entity @s[tag=flag2] run scoreboard players operation @e[tag=hurt,sort=nearest,limit=1] damage_source = #damage_source value
execute if entity @s[tag=flag2] run tag @s remove flag2
