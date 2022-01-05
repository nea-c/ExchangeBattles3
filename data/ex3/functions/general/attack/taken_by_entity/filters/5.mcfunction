#> ex3:general/attack/taken_by_entity/filters/5
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/taken_by_entity/filters/6

execute if entity @a[tag=this,advancements={ex3:general/attack/taken_by_entity={5-0=true}}] if entity @s[tag=MobFindFlag5.0] run function ex3:general/attack/taken_by_entity/filters/4
execute if entity @a[tag=this,advancements={ex3:general/attack/taken_by_entity={5-1=true}}] if entity @s[tag=MobFindFlag5.1] run function ex3:general/attack/taken_by_entity/filters/4