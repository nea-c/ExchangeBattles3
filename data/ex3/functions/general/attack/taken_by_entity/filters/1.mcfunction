#> ex3:general/attack/taken_by_entity/filters/1
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/taken_by_entity/filters/2

execute if entity @a[tag=this,advancements={ex3:general/attack/taken_by_entity={1-0=true}}] if entity @s[tag=MobFindFlag1.0] run function ex3:general/attack/taken_by_entity/filters/0
execute if entity @a[tag=this,advancements={ex3:general/attack/taken_by_entity={1-1=true}}] if entity @s[tag=MobFindFlag1.1] run function ex3:general/attack/taken_by_entity/filters/0