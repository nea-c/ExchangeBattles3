
scoreboard players set #support value 85
execute if entity @s[tag=skill1_use] run scoreboard players operation @s skill1_ct *= #support value
execute if entity @s[tag=skill1_use] run scoreboard players operation @s skill1_ct /= #100 value

execute if entity @s[tag=skill2_use] run scoreboard players operation @s skill2_ct *= #support value
execute if entity @s[tag=skill2_use] run scoreboard players operation @s skill2_ct /= #100 value

execute if entity @s[tag=skill3_use] run scoreboard players operation @s skill3_ct *= #support value
execute if entity @s[tag=skill3_use] run scoreboard players operation @s skill3_ct /= #100 value

scoreboard players reset #support