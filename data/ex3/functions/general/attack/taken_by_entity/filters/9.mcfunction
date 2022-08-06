#> ex3:general/attack/taken_by_entity/filters/9
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/taken_by_entity/filters/10

execute if entity @a[tag=this,advancements={ex3:general/attack/taken/by_entity={9-0=true}}] if entity @s[tag=MobFindFlag9.0] run function ex3:general/attack/taken_by_entity/filters/8
execute if entity @a[tag=this,advancements={ex3:general/attack/taken/by_entity={9-1=true}}] if entity @s[tag=MobFindFlag9.1] run function ex3:general/attack/taken_by_entity/filters/8