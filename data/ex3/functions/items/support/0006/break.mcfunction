#サポート6
scoreboard players set #support6 value2 0

execute at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 0.7 1

clear @s minecraft:shield{CustomModelData:20006}

summon marker 0 0 0 {Tags:["support6-time","this","fixed"]}
scoreboard players operation @e[tag=this] number = @s number
tag @e[tag=this] remove this