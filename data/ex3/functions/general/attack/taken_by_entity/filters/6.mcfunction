#> ex3:general/attack/taken_by_entity/filters/6
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/taken_by_entity/filters/7

execute if entity @a[tag=this,advancements={ex3:general/attack/taken/by_entity={6-0=true}}] if entity @s[tag=MobFindFlag6.0] run function ex3:general/attack/taken_by_entity/filters/5
execute if entity @a[tag=this,advancements={ex3:general/attack/taken/by_entity={6-1=true}}] if entity @s[tag=MobFindFlag6.1] run function ex3:general/attack/taken_by_entity/filters/5