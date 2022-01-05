#> ex3:general/attack/taken_by_entity/filters/2
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/taken_by_entity/filters/3

execute if entity @a[tag=this,advancements={ex3:general/attack/taken_by_entity={2-0=true}}] if entity @s[tag=MobFindFlag2.0] run function ex3:general/attack/taken_by_entity/filters/1
execute if entity @a[tag=this,advancements={ex3:general/attack/taken_by_entity={2-1=true}}] if entity @s[tag=MobFindFlag2.1] run function ex3:general/attack/taken_by_entity/filters/1