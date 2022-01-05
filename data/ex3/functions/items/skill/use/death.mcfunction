


#魂の呼び声
execute if entity @s[scores={skill1=22,skill1_ct=0}] run function ex3:items/skill/0022/use
execute if entity @s[scores={skill2=22,skill2_ct=0}] run function ex3:items/skill/0022/use
execute if entity @s[scores={skill3=22,skill3_ct=0}] run function ex3:items/skill/0022/use



#泣きの一回
scoreboard players operation #- number = @s number
execute as @e[tag=skill24-time] if score @s number = #- number run tag @s add skill24-using
execute if entity @s[tag=skill24-end] run tag @s add skill24-using
execute if entity @s[scores={skill1=24,skill1_ct=0}] unless entity @e[tag=skill24-using,limit=1] run function ex3:items/skill/0024/use
execute if entity @s[scores={skill2=24,skill2_ct=0}] unless entity @e[tag=skill24-using,limit=1] run function ex3:items/skill/0024/use
execute if entity @s[scores={skill3=24,skill3_ct=0}] unless entity @e[tag=skill24-using,limit=1] run function ex3:items/skill/0024/use
execute if entity @e[tag=skill24-using,limit=1] as @e[tag=skill24-using] run tag @s remove skill24-using
execute if entity @s[tag=skill24-end] run tag @s remove skill24-end



