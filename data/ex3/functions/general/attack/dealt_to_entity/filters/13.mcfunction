#> ex3:general/attack/dealt_to_entity/filters/13
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/dealt_to_entity/filters/14

execute if entity @a[tag=this,advancements={ex3:general/attack/dealt/to_entity={13-0=true}}] if entity @s[tag=MobFindFlag13.0] run function ex3:general/attack/dealt_to_entity/filters/12
execute if entity @a[tag=this,advancements={ex3:general/attack/dealt/to_entity={13-1=true}}] if entity @s[tag=MobFindFlag13.1] run function ex3:general/attack/dealt_to_entity/filters/12