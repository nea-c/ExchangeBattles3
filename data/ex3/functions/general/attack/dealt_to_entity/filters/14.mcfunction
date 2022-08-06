#> ex3:general/attack/dealt_to_entity/filters/14
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/dealt_to_entity/filters/15

execute if entity @a[tag=this,advancements={ex3:general/attack/dealt/to_entity={14-0=true}}] if entity @s[tag=MobFindFlag14.0] run function ex3:general/attack/dealt_to_entity/filters/13
execute if entity @a[tag=this,advancements={ex3:general/attack/dealt/to_entity={14-1=true}}] if entity @s[tag=MobFindFlag14.1] run function ex3:general/attack/dealt_to_entity/filters/13