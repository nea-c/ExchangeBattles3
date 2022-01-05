#スキル26

execute if entity @s[predicate=ex3:general/sneak] run function ex3:items/skill/0026/count
execute if entity @e[tag=skill26-count,tag=!skill26-counted,limit=1] if entity @s[tag=skill26-check,predicate=!ex3:general/sneak] run function ex3:items/skill/0026/use

