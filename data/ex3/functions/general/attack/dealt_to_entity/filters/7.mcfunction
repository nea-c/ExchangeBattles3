#> ex3:general/attack/dealt_to_entity/filters/7
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/dealt_to_entity/filters/8

execute if entity @a[tag=this,advancements={ex3:general/attack/dealt/to_entity={7-0=true}}] if entity @s[tag=MobFindFlag7.0] run function ex3:general/attack/dealt_to_entity/filters/6
execute if entity @a[tag=this,advancements={ex3:general/attack/dealt/to_entity={7-1=true}}] if entity @s[tag=MobFindFlag7.1] run function ex3:general/attack/dealt_to_entity/filters/6