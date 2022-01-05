#slot1
scoreboard players remove @s skill1_ct 1


execute if score @s skill1_ct matches ..0 unless data entity @s Inventory[{id:"minecraft:compass"}].tag{skill_slot:1} run clear @s minecraft:compass{skill_slot:1} 1
execute if score @s skill1_ct matches ..0 run function ex3:items/skill/setup
execute if score @s skill1_ct matches 1.. run scoreboard players operation #ct value = @s skill1_ct
execute if score @s skill1_ct matches 1.. run scoreboard players add #ct value 19
execute if score @s skill1_ct matches 1.. run scoreboard players operation #ct value /= #20 value
execute if score @s skill1_ct matches 1..1200 store result score #ct value2 run clear @s minecraft:compass{skill_slot:1} 0
execute if score @s skill1_ct matches 1..1200 run scoreboard players operation #ct value2 -= #ct value
execute if score @s skill1_ct matches 1..1200 if score #ct value2 matches 1 run clear @s minecraft:compass{skill_slot:1} 1
execute if score @s skill1_ct matches 1..1200 if score #ct value2 matches 2 run clear @s minecraft:compass{skill_slot:1} 2
execute if score @s skill1_ct matches 1..1200 if score #ct value2 matches 3 run clear @s minecraft:compass{skill_slot:1} 3
execute if score @s skill1_ct matches 1..1200 if score #ct value2 matches 4 run clear @s minecraft:compass{skill_slot:1} 4
execute if score @s skill1_ct matches 1..1200 if score #ct value2 matches 5 run clear @s minecraft:compass{skill_slot:1} 5
execute if score @s skill1_ct matches 1..1200 if score #ct value2 matches 6 run clear @s minecraft:compass{skill_slot:1} 6
execute if score @s skill1_ct matches 1..1200 if score #ct value2 matches 7 run clear @s minecraft:compass{skill_slot:1} 7
execute if score @s skill1_ct matches 1..1200 if score #ct value2 matches 8 run clear @s minecraft:compass{skill_slot:1} 8
execute if score @s skill1_ct matches 1..1200 if score #ct value2 matches 9 run clear @s minecraft:compass{skill_slot:1} 9
execute if score @s skill1_ct matches 1..1200 if score #ct value2 matches 10 run clear @s minecraft:compass{skill_slot:1} 10
execute if score @s skill1_ct matches 1.. store result score #ct value2 run clear @s minecraft:clock{skill_slot:1} 0
execute if score @s skill1_ct matches ..1200 if score #ct value2 matches 1.. run clear @s minecraft:clock{skill_slot:1}
execute if score @s skill1_ct matches ..1200 if score #ct value2 matches 1.. run function ex3:items/skill/cooltime/slot1_set
execute if score @s skill1_ct matches 1200.. run scoreboard players add #ct value 59
execute if score @s skill1_ct matches 1200.. run scoreboard players operation #ct value /= #60 value
execute if score @s skill1_ct matches 1200.. run scoreboard players operation #ct value2 -= #ct value
execute if score @s skill1_ct matches 1200.. if score #ct value2 matches 1 run clear @s minecraft:clock{skill_slot:1} 1
execute if score @s skill1_ct matches 1200.. if score #ct value2 matches 2 run clear @s minecraft:clock{skill_slot:1} 2
execute if score @s skill1_ct matches 1200.. if score #ct value2 matches 3 run clear @s minecraft:clock{skill_slot:1} 3
execute if score @s skill1_ct matches 1200.. if score #ct value2 matches 4 run clear @s minecraft:clock{skill_slot:1} 4
execute if score @s skill1_ct matches 1200.. if score #ct value2 matches 5 run clear @s minecraft:clock{skill_slot:1} 5
execute if score @s skill1_ct matches 1200.. if score #ct value2 matches 6 run clear @s minecraft:clock{skill_slot:1} 6
execute if score @s skill1_ct matches 1200.. if score #ct value2 matches 7 run clear @s minecraft:clock{skill_slot:1} 7
execute if score @s skill1_ct matches 1200.. if score #ct value2 matches 8 run clear @s minecraft:clock{skill_slot:1} 8
execute if score @s skill1_ct matches 1200.. if score #ct value2 matches 9 run clear @s minecraft:clock{skill_slot:1} 9
execute if score @s skill1_ct matches 1200.. if score #ct value2 matches 10 run clear @s minecraft:clock{skill_slot:1} 10

scoreboard players reset #ct
