#> ex3:general/attack/dealt_to_entity/filters/4
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/dealt_to_entity/filters/5

execute if entity @a[tag=this,advancements={ex3:general/attack/dealt/to_entity={4-0=true}}] if entity @s[tag=MobFindFlag4.0] run function ex3:general/attack/dealt_to_entity/filters/3
execute if entity @a[tag=this,advancements={ex3:general/attack/dealt/to_entity={4-1=true}}] if entity @s[tag=MobFindFlag4.1] run function ex3:general/attack/dealt_to_entity/filters/3