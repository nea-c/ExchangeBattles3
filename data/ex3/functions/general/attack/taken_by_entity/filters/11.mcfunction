#> ex3:general/attack/taken_by_entity/filters/11
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/taken_by_entity/filters/12

execute if entity @a[tag=this,advancements={ex3:general/attack/taken/by_entity={11-0=true}}] if entity @s[tag=MobFindFlag11.0] run function ex3:general/attack/taken_by_entity/filters/10
execute if entity @a[tag=this,advancements={ex3:general/attack/taken/by_entity={11-1=true}}] if entity @s[tag=MobFindFlag11.1] run function ex3:general/attack/taken_by_entity/filters/10