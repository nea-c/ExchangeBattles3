#> ex3:general/attack/dealt_to_entity/filters/15
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/dealt_to_entity/

execute if entity @a[tag=this,advancements={ex3:general/attack/dealt_to_entity={15-0=true}}] if entity @s[tag=MobFindFlag15.0] run function ex3:general/attack/dealt_to_entity/filters/14
execute if entity @a[tag=this,advancements={ex3:general/attack/dealt_to_entity={15-1=true}}] if entity @s[tag=MobFindFlag15.1] run function ex3:general/attack/dealt_to_entity/filters/14