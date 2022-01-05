#スキル30
scoreboard players add @s value 1
execute unless score @s value matches 15.. run function ex3:items/skill/0030/standby
execute if score @s value matches 15 run playsound entity.evoker.prepare_summon master @a ~ ~ ~ 2 2
execute if score @s value matches 15.. run function ex3:items/skill/0030/front
