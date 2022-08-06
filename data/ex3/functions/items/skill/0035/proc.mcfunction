#スキル33

scoreboard players operation #- number = @s number
execute as @a if score @s number = #- number run tag @s add owner

execute as @a[tag=owner] run tag @s add skill35-now

scoreboard players add @s value2 1
execute if score @s value2 matches 2.. run scoreboard players reset @s value2

execute if score @s value2 matches 1 as @a[tag=owner] run tp @s ~ ~ ~
tag @s add skill35-this

scoreboard players add @s value 1
#execute if score @s value2 matches 0 run tag @s add end--

execute if entity @s[tag=slot1] if entity @a[tag=owner,scores={skill1=35,skill1_ct=0},limit=1] as @a[tag=owner,scores={skill1=35,skill1_ct=0}] run tag @s add skill35-InSlot
execute if entity @s[tag=slot2] if entity @a[tag=owner,scores={skill2=35,skill2_ct=0},limit=1] as @a[tag=owner,scores={skill2=35,skill2_ct=0}] run tag @s add skill35-InSlot
execute if entity @s[tag=slot3] if entity @a[tag=owner,scores={skill3=35,skill3_ct=0},limit=1] as @a[tag=owner,scores={skill3=35,skill3_ct=0}] run tag @s add skill35-InSlot

execute if entity @s[tag=end--] if entity @a[tag=skill35-InSlot,limit=1] as @a[tag=skill35-InSlot] run tag @s remove skill35-InSlot

execute if entity @a[tag=owner,tag=!skill35-InSlot,limit=1] as @a[tag=owner,tag=!skill35-InSlot] run tag @s add skill35-End
execute if entity @a[tag=owner,tag=!skill35-InSlot,limit=1] as @a[tag=owner,tag=!skill35-InSlot] run function ex3:items/skill/0035/use_end

execute if entity @a[tag=skill35-InSlot,limit=1] as @a[tag=skill35-InSlot] run tag @s remove skill35-InSlot


execute as @a[tag=owner] run tag @s remove owner

#execute if score @s value matches 11 run kill @s

tag @s remove skill35-this

scoreboard players reset #-

