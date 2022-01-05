#> ex3:general/attack/dealt_to_entity/filters/2
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/dealt_to_entity/filters/3

execute if entity @a[tag=this,advancements={ex3:general/attack/dealt_to_entity={2-0=true}}] if entity @s[tag=MobFindFlag2.0] run function ex3:general/attack/dealt_to_entity/filters/1
execute if entity @a[tag=this,advancements={ex3:general/attack/dealt_to_entity={2-1=true}}] if entity @s[tag=MobFindFlag2.1] run function ex3:general/attack/dealt_to_entity/filters/1