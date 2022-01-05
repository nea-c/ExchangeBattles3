#スキル14





execute positioned ~ ~0.44 ~ run function ex3:items/skill/0014/check

execute if entity @s[tag=tp_ok] run function ex3:items/skill/0014/particle

execute if entity @s[tag=tp_ok] run tag @s remove tp_ok

