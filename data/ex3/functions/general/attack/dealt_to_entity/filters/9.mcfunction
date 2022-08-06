#> ex3:general/attack/dealt_to_entity/filters/9
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/dealt_to_entity/filters/10

execute if entity @a[tag=this,advancements={ex3:general/attack/dealt/to_entity={9-0=true}}] if entity @s[tag=MobFindFlag9.0] run function ex3:general/attack/dealt_to_entity/filters/8
execute if entity @a[tag=this,advancements={ex3:general/attack/dealt/to_entity={9-1=true}}] if entity @s[tag=MobFindFlag9.1] run function ex3:general/attack/dealt_to_entity/filters/8