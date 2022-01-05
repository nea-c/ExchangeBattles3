execute if entity @s[advancements={ex3:general/attack/dealt=true}] run effect clear @s minecraft:invisibility
execute if entity @s[nbt={HurtTime:9s}] run effect clear @s minecraft:invisibility
execute if entity @s[tag=skill-used] run effect clear @s minecraft:invisibility

execute unless data entity @s {ActiveEffects:[{Id:14b,Ambient:1b}]} run function ex3:items/skill/0031/end-buff
