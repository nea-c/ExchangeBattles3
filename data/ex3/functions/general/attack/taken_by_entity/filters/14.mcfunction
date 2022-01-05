#> ex3:general/attack/taken_by_entity/filters/14
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/taken_by_entity/filters/15

execute if entity @a[tag=this,advancements={ex3:general/attack/taken_by_entity={14-0=true}}] if entity @s[tag=MobFindFlag14.0] run function ex3:general/attack/taken_by_entity/filters/13
execute if entity @a[tag=this,advancements={ex3:general/attack/taken_by_entity={14-1=true}}] if entity @s[tag=MobFindFlag14.1] run function ex3:general/attack/taken_by_entity/filters/13