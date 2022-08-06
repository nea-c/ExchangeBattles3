#> ex3:general/attack/taken_by_entity/filters/4
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/taken_by_entity/filters/5

execute if entity @a[tag=this,advancements={ex3:general/attack/taken/by_entity={4-0=true}}] if entity @s[tag=MobFindFlag4.0] run function ex3:general/attack/taken_by_entity/filters/3
execute if entity @a[tag=this,advancements={ex3:general/attack/taken/by_entity={4-1=true}}] if entity @s[tag=MobFindFlag4.1] run function ex3:general/attack/taken_by_entity/filters/3