tag @s add support12-me
execute if entity @e[nbt={ActiveEffects:[{Id:14}]},tag=!support12-me,tag=!no_entity,distance=..10,limit=1] as @e[nbt={ActiveEffects:[{Id:14}]},tag=!support12-me,tag=!no_entity,distance=..10] at @s anchored eyes positioned ^ ^ ^ run particle dust 0.25 0 0.6 1 ~ ~-0.6 ~ .2 .2 .2 0 1 force @a[tag=support12-me,limit=1]
tag @s remove support12-me
