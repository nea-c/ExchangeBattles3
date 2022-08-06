#> ex3:general/attack/taken_by_entity/filters/8
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/taken_by_entity/filters/9

execute if entity @a[tag=this,advancements={ex3:general/attack/taken/by_entity={8-0=true}}] if entity @s[tag=MobFindFlag8.0] run function ex3:general/attack/taken_by_entity/filters/7
execute if entity @a[tag=this,advancements={ex3:general/attack/taken/by_entity={8-1=true}}] if entity @s[tag=MobFindFlag8.1] run function ex3:general/attack/taken_by_entity/filters/7