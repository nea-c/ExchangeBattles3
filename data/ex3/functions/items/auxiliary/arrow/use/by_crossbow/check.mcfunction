#弓、クロスボウ使用時に矢(スコア)を減らす
execute at @s run function ex3:items/auxiliary/arrow/use/team_join


execute if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:crossbow"}]} store result score #has_item value run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData
execute if data entity @s {SelectedItem:{id:"minecraft:crossbow"}} store result score #has_item value run data get entity @s SelectedItem.tag.CustomModelData
execute if score #has_item value matches 1.. run function ex3:items/auxiliary/arrow/use/by_crossbow/execution

scoreboard players reset #has_item
