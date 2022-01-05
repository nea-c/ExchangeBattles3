#スキルSetup

scoreboard players operation #tab value = @s tab
scoreboard players operation #tab value %= #10000 value

execute unless data entity @s Inventory[{Slot:31b}].tag{gui_item:1} run scoreboard players set #item value 4
execute unless data entity @s Inventory[{Slot:24b,Count:3b}].tag{gui_item:1} run scoreboard players set #item value 3
execute unless data entity @s Inventory[{Slot:22b,Count:2b}].tag{gui_item:1} run scoreboard players set #item value 2
execute unless data entity @s Inventory[{Slot:20b,Count:1b}].tag{gui_item:1} run scoreboard players set #item value 1
execute unless data entity @s Inventory[{Slot:13b}].tag{gui_item:1} run scoreboard players set #item value 0

execute if score #item value matches 0..4 run tag @s add gui_change

execute if score #item value matches 0 run scoreboard players reset #item value
execute if score #item value matches 1 if score @s skill1 = #tab value run scoreboard players reset #item value
execute if score #item value matches 2 if score @s skill2 = #tab value run scoreboard players reset #item value
execute if score #item value matches 3 if score @s skill3 = #tab value run scoreboard players reset #item value
execute if score #item value matches 4 at @s run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 2 1

execute if score #item value matches 1..3 run tag @s add skill_setup--

execute if entity @s[tag=skill_setup--] if score #item value matches 1 if score @s skill2 = #tab value run scoreboard players operation @s skill2 = @s skill1
execute if entity @s[tag=skill_setup--] if score #item value matches 1 if score @s skill3 = #tab value run scoreboard players operation @s skill3 = @s skill1
execute if entity @s[tag=skill_setup--] if score #item value matches 1 unless score @s skill1 = #tab value run tag @s add skill_setup--p
execute if entity @s[tag=skill_setup--] if score #item value matches 1 unless score @s skill1 = #tab value run scoreboard players operation @s skill1 = #tab value

execute if entity @s[tag=skill_setup--] if score #item value matches 2 if score @s skill1 = #tab value run scoreboard players operation @s skill1 = @s skill2
execute if entity @s[tag=skill_setup--] if score #item value matches 2 if score @s skill3 = #tab value run scoreboard players operation @s skill3 = @s skill2
execute if entity @s[tag=skill_setup--] if score #item value matches 2 unless score @s skill2 = #tab value run tag @s add skill_setup--p
execute if entity @s[tag=skill_setup--] if score #item value matches 2 unless score @s skill2 = #tab value run scoreboard players operation @s skill2 = #tab value

execute if entity @s[tag=skill_setup--] if score #item value matches 3 if score @s skill1 = #tab value run scoreboard players operation @s skill1 = @s skill3
execute if entity @s[tag=skill_setup--] if score #item value matches 3 if score @s skill2 = #tab value run scoreboard players operation @s skill2 = @s skill3
execute if entity @s[tag=skill_setup--] if score #item value matches 3 unless score @s skill3 = #tab value run tag @s add skill_setup--p
execute if entity @s[tag=skill_setup--] if score #item value matches 3 unless score @s skill3 = #tab value run scoreboard players operation @s skill3 = #tab value
execute if entity @s[tag=skill_setup--,tag=skill_setup--p] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
execute if entity @s[tag=skill_setup--,tag=skill_setup--p] run scoreboard players set @s drop 1
execute if entity @s[tag=skill_setup--,tag=skill_setup--p] run tag @s add skill_no_drop
execute if entity @s[tag=skill_setup--] run tag @s remove skill_setup--
execute if entity @s[tag=skill_setup--p] run tag @s remove skill_setup--p


execute if score #item value matches 1.. run scoreboard players set @s tab 3
execute if score #item value matches 1.. run function ex3:items/gui/set

scoreboard players reset #item
scoreboard players reset #tab