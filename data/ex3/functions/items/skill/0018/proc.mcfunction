#スキル18

scoreboard players operation #- number = @s number
execute as @a if score @s number = #- number run tag @s add skill18-now

tag @s add skill18-this

scoreboard players add @s value 1

execute if entity @s[tag=slot1] if entity @a[tag=skill18-now,scores={skill1=18,skill1_ct=0},limit=1] as @a[tag=skill18-now,scores={skill1=18,skill1_ct=0}] run tag @s add skill18-InSlot
execute if entity @s[tag=slot2] if entity @a[tag=skill18-now,scores={skill2=18,skill2_ct=0},limit=1] as @a[tag=skill18-now,scores={skill2=18,skill2_ct=0}] run tag @s add skill18-InSlot
execute if entity @s[tag=slot3] if entity @a[tag=skill18-now,scores={skill3=18,skill3_ct=0},limit=1] as @a[tag=skill18-now,scores={skill3=18,skill3_ct=0}] run tag @s add skill18-InSlot

execute if entity @s[tag=end--] if entity @a[tag=skill18-InSlot,limit=1] as @a[tag=skill18-InSlot] run tag @s remove skill18-InSlot
execute if entity @a[tag=skill18-InSlot,nbt={OnGround:1b},limit=1] as @a[tag=skill18-InSlot,nbt={OnGround:1b}] run tag @s remove skill18-InSlot

execute if entity @a[tag=skill18-now,tag=!skill18-InSlot,limit=1] as @a[tag=skill18-now,tag=!skill18-InSlot] run function ex3:items/skill/0018/use_end

execute if entity @a[tag=skill18-InSlot,limit=1] as @a[tag=skill18-InSlot] run tag @s remove skill18-InSlot


tag @s remove skill18-this

scoreboard players reset #-