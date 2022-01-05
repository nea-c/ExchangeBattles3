#ガードチェック
scoreboard players operation #support6 value = @s damage_shield

execute if entity @s[tag=!shield-guardB] at @s run playsound item.shield.block master @a ~ ~ ~ 1 1
execute if entity @s[tag=shield-guardB] run tag @s remove shield-guardB

execute if entity @s[scores={support=6}] run function ex3:items/support/0006/guard


scoreboard players reset @s damage_shield