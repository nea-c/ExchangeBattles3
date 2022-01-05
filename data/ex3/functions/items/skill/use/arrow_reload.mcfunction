
#クイックリロード
execute if entity @s[scores={skill1=20,skill1_ct=0}] if entity @e[tag=arrow-reloading,scores={value=10..}] run function ex3:items/skill/0020/use
execute if entity @s[scores={skill2=20,skill2_ct=0}] if entity @e[tag=arrow-reloading,scores={value=10..}] run function ex3:items/skill/0020/use
execute if entity @s[scores={skill3=20,skill3_ct=0}] if entity @e[tag=arrow-reloading,scores={value=10..}] run function ex3:items/skill/0020/use
