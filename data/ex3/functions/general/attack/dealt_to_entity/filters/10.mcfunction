#> ex3:general/attack/dealt_to_entity/filters/10
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/dealt_to_entity/filters/11

execute if entity @a[tag=this,advancements={ex3:general/attack/dealt/to_entity={10-0=true}}] if entity @s[tag=MobFindFlag10.0] run function ex3:general/attack/dealt_to_entity/filters/9
execute if entity @a[tag=this,advancements={ex3:general/attack/dealt/to_entity={10-1=true}}] if entity @s[tag=MobFindFlag10.1] run function ex3:general/attack/dealt_to_entity/filters/9