execute if score @s counter matches ..60 run scoreboard players operation @s subcounter *= #7 counter
execute if score @s counter matches 61..85 run scoreboard players operation @s subcounter *= #5 counter
execute if score @s counter matches 86.. run scoreboard players operation @s subcounter *= #4 counter
scoreboard players operation #dummy dummy = @s subcounter
execute if score #dummy dummy matches 1.. run scoreboard players operation @s subcounter *= #-1 counter
scoreboard players operation @s subcounter /= #8 counter
execute if score #dummy dummy matches 1.. run scoreboard players operation @s subcounter *= #-1 counter
scoreboard players reset #dummy dummy
scoreboard players set @s dummy 0
