
execute if entity @s[tag=!drop,tag=!not_pos_check] run function ex3:items/weapon/pos_check
execute if entity @s[tag=!drop,tag=!not_pos_check] run function ex3:items/support/pos_check
execute if entity @s[tag=!drop,tag=!not_pos_check] run function ex3:items/skill/pos_check
execute if entity @s[tag=not_pos_check] run tag @s remove not_pos_check

execute if data entity @s[tag=!weapon5_charged] {Inventory:[{id:"minecraft:crossbow",tag:{CustomModelData:10005,Charged:1b}}]} run function ex3:items/weapon/0005/charge
