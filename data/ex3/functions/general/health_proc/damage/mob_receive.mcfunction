#モブがダメージ受けた処理

#scoreboard players set @s health_frac 10000
execute store result score #health_int value run data get entity @s Health 10
scoreboard players operation #health_int value -= #10000 value
scoreboard players operation @s damage_resist -= #health_int value
scoreboard players reset @s health_frac
scoreboard players reset #health_int value
data modify entity @s Health set value 1000f
