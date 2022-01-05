#> ex3:general/attack/dealt_to_entity/filters/11
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/dealt_to_entity/filters/12

execute if entity @a[tag=this,advancements={ex3:general/attack/dealt_to_entity={11-0=true}}] if entity @s[tag=MobFindFlag11.0] run function ex3:general/attack/dealt_to_entity/filters/10
execute if entity @a[tag=this,advancements={ex3:general/attack/dealt_to_entity={11-1=true}}] if entity @s[tag=MobFindFlag11.1] run function ex3:general/attack/dealt_to_entity/filters/10