#スキル33

scoreboard players operation #- number = @s number
execute as @a if score @s number = #- number run tag @s add skill33-now

tag @s add skill33-this

scoreboard players add @s value 1
scoreboard players remove @s value2 1
execute if score @s value2 matches 0 run tag @s add end--

execute if entity @s[tag=slot1] if entity @a[tag=skill33-now,scores={skill1=33,skill1_ct=0},limit=1] as @a[tag=skill33-now,scores={skill1=33,skill1_ct=0}] run tag @s add skill33-InSlot
execute if entity @s[tag=slot2] if entity @a[tag=skill33-now,scores={skill2=33,skill2_ct=0},limit=1] as @a[tag=skill33-now,scores={skill2=33,skill2_ct=0}] run tag @s add skill33-InSlot
execute if entity @s[tag=slot3] if entity @a[tag=skill33-now,scores={skill3=33,skill3_ct=0},limit=1] as @a[tag=skill33-now,scores={skill3=33,skill3_ct=0}] run tag @s add skill33-InSlot

execute if entity @s[tag=end--] if entity @a[tag=skill33-InSlot,limit=1] as @a[tag=skill33-InSlot] run tag @s remove skill33-InSlot

execute if entity @a[tag=skill33-now,tag=!skill33-InSlot,limit=1] as @a[tag=skill33-now,tag=!skill33-InSlot] run tag @s add skill33-End
execute if entity @a[tag=skill33-now,tag=!skill33-InSlot,limit=1] as @a[tag=skill33-now,tag=!skill33-InSlot] run function ex3:items/skill/0033/use_end

execute if entity @a[tag=skill33-InSlot,limit=1] as @a[tag=skill33-InSlot] run tag @s remove skill33-InSlot


#execute if score @s value matches 11 run kill @s

tag @s remove skill33-this

scoreboard players reset #-

