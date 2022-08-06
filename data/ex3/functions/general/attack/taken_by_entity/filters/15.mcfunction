#> ex3:general/attack/taken_by_entity/filters/15
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function ex3:general/attack/taken_by_entity/on_hurt

execute if entity @a[tag=this,advancements={ex3:general/attack/taken/by_entity={15-0=true}}] if entity @s[tag=MobFindFlag15.0] run function ex3:general/attack/taken_by_entity/filters/14
execute if entity @a[tag=this,advancements={ex3:general/attack/taken/by_entity={15-1=true}}] if entity @s[tag=MobFindFlag15.1] run function ex3:general/attack/taken_by_entity/filters/14