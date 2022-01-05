#> ex3:general/attack/taken_by_entity/filters/0
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/taken_by_entity/filters/1

execute if entity @a[tag=this,advancements={ex3:general/attack/taken_by_entity={0-0=true}}] if entity @s[tag=MobFindFlag0.0] run function ex3:general/attack/taken_by_entity/fetch
execute if entity @a[tag=this,advancements={ex3:general/attack/taken_by_entity={0-1=true}}] if entity @s[tag=MobFindFlag0.1] run function ex3:general/attack/taken_by_entity/fetch