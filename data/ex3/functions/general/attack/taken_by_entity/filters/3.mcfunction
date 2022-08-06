#> ex3:general/attack/taken_by_entity/filters/3
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/taken_by_entity/filters/4

execute if entity @a[tag=this,advancements={ex3:general/attack/taken/by_entity={3-0=true}}] if entity @s[tag=MobFindFlag3.0] run function ex3:general/attack/taken_by_entity/filters/2
execute if entity @a[tag=this,advancements={ex3:general/attack/taken/by_entity={3-1=true}}] if entity @s[tag=MobFindFlag3.1] run function ex3:general/attack/taken_by_entity/filters/2