#> ex3:general/attack/taken_by_entity/filters/10
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/taken_by_entity/filters/11

execute if entity @a[tag=this,advancements={ex3:general/attack/taken_by_entity={10-0=true}}] if entity @s[tag=MobFindFlag10.0] run function ex3:general/attack/taken_by_entity/filters/9
execute if entity @a[tag=this,advancements={ex3:general/attack/taken_by_entity={10-1=true}}] if entity @s[tag=MobFindFlag10.1] run function ex3:general/attack/taken_by_entity/filters/9