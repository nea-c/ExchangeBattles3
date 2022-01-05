execute if entity @s[tag=dup] run tag @s remove dup

scoreboard players add #number_base mob_number 1
scoreboard players operation #number_base mob_number %= #2^15 value
execute if score #number_base mob_number matches 0 run scoreboard players add #number_base mob_number 1

scoreboard players operation @s mob_number = #number_base mob_number

tag @s add me
execute as @e[tag=!me,type=!#ex3:not_mobs] if score @s mob_number = #number_base mob_number run tag @e[tag=me,limit=1] add dup
tag @s remove me

execute if entity @s[tag=dup] run function ex3:general/entity/number-set

