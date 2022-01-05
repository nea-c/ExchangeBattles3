#> ex3:general/attack/taken_by_entity/filters/12
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/taken_by_entity/filters/13

execute if entity @a[tag=this,advancements={ex3:general/attack/taken_by_entity={12-0=true}}] if entity @s[tag=MobFindFlag12.0] run function ex3:general/attack/taken_by_entity/filters/11
execute if entity @a[tag=this,advancements={ex3:general/attack/taken_by_entity={12-1=true}}] if entity @s[tag=MobFindFlag12.1] run function ex3:general/attack/taken_by_entity/filters/11