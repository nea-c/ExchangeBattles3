#> ex3:general/attack/dealt_to_entity/filters/5
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/dealt_to_entity/filters/6

execute if entity @a[tag=this,advancements={ex3:general/attack/dealt/to_entity={5-0=true}}] if entity @s[tag=MobFindFlag5.0] run function ex3:general/attack/dealt_to_entity/filters/4
execute if entity @a[tag=this,advancements={ex3:general/attack/dealt/to_entity={5-1=true}}] if entity @s[tag=MobFindFlag5.1] run function ex3:general/attack/dealt_to_entity/filters/4