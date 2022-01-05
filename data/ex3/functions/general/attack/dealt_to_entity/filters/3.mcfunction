#> ex3:general/attack/dealt_to_entity/filters/3
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/dealt_to_entity/filters/4

execute if entity @a[tag=this,advancements={ex3:general/attack/dealt_to_entity={3-0=true}}] if entity @s[tag=MobFindFlag3.0] run function ex3:general/attack/dealt_to_entity/filters/2
execute if entity @a[tag=this,advancements={ex3:general/attack/dealt_to_entity={3-1=true}}] if entity @s[tag=MobFindFlag3.1] run function ex3:general/attack/dealt_to_entity/filters/2