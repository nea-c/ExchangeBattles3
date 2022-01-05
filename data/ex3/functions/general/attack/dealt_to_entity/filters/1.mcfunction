#> ex3:general/attack/dealt_to_entity/filters/1
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/dealt_to_entity/filters/2

execute if entity @a[tag=this,advancements={ex3:general/attack/dealt_to_entity={1-0=true}}] if entity @s[tag=MobFindFlag1.0] run function ex3:general/attack/dealt_to_entity/filters/0
execute if entity @a[tag=this,advancements={ex3:general/attack/dealt_to_entity={1-1=true}}] if entity @s[tag=MobFindFlag1.1] run function ex3:general/attack/dealt_to_entity/filters/0