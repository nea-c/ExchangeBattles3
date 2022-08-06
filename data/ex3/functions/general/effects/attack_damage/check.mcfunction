

execute if data entity @s ActiveEffects[{Id:18}] if data entity @s Attributes[].Modifiers[{UUID:[I;577059721,292440540,-1687447183,1218141157]}] run function ex3:general/effects/attack_damage/weakness
execute unless data entity @s ActiveEffects[{Id:18}] if data entity @s Attributes[].Modifiers[{UUID:[I;0,0,0,1]}] run attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-1

execute if data entity @s ActiveEffects[{Id:5}] if data entity @s Attributes[].Modifiers[{UUID:[I;1686990948,1784696665,-1967209790,980277161]}] run function ex3:general/effects/attack_damage/strength
execute unless data entity @s ActiveEffects[{Id:5}] if data entity @s Attributes[].Modifiers[{UUID:[I;0,0,0,2]}] run attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-2
