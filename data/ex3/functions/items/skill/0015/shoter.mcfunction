#スキル15

execute if entity @s[scores={skill1=15,skill1_ct=1..}] run function ex3:items/skill/cooltime/slot1_set
execute if entity @s[scores={skill2=15,skill2_ct=1..}] run function ex3:items/skill/cooltime/slot2_set
execute if entity @s[scores={skill3=15,skill3_ct=1..}] run function ex3:items/skill/cooltime/slot3_set
execute if entity @s[scores={skill1=15,skill1_ct=0}] run scoreboard players set #item value 15
execute if entity @s[scores={skill2=15,skill2_ct=0}] run scoreboard players set #item value 15
execute if entity @s[scores={skill3=15,skill3_ct=0}] run scoreboard players set #item value 15
execute if score #item value matches 15 run function ex3:items/skill/loot_before
