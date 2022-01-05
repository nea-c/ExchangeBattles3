#サポート6

scoreboard players operation #- number = @s number
execute as @a if score @s number = #- number run tag @s add support6-owner


scoreboard players add @s value 1
execute if score @s value matches 201.. if entity @a[tag=support6-owner,scores={support=6},limit=1] as @a[tag=support6-owner,scores={support=6}] run function ex3:items/support/0006/set
execute if score @s value matches 201.. if entity @a[tag=support6-owner,scores={tab=2,support_page=1},limit=1] as @a[tag=support6-owner,scores={tab=2,support_page=1}] run tag @s add gui_change
execute if score @s value matches 201.. if entity @a[tag=support6-owner,scores={tab=2,support_page=1},limit=1] as @a[tag=support6-owner,scores={tab=2,support_page=1}] run advancement grant @s only ex3:general/inventory_changed
execute if score @s value matches 201.. if entity @a[tag=support6-owner,scores={max_health=0..},limit=1] as @a[tag=support6-owner,scores={max_health=0..}] unless score @s support matches 6 at @s run playsound minecraft:item.armor.equip_chain master @s ~ ~ ~ 1 0.7
execute if score @s value matches 201.. if entity @a[tag=support6-owner,scores={max_health=0..,support=6},limit=1] as @a[tag=support6-owner,scores={max_health=0..,support=6}] at @s run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 1 0.7
execute if score @s value matches 201.. if entity @a[tag=support6-owner,limit=1] run kill @s

execute if entity @a[tag=support6-owner,limit=1] as @a[tag=support6-owner] run tag @s remove support6-owner

scoreboard players reset #-



