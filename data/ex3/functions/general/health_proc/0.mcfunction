
function ex3:general/health_proc/display/actionbar



#自然回復
execute if score #setting_regeneration value matches 1 run scoreboard players add @s regeneration 100
execute if entity @s[scores={regeneration=1..}] run function ex3:general/health_proc/regeneration


#満腹度
#execute if entity @a[nbt=!{ActiveEffects:[{Id:23b}]},limit=1] as @s[nbt=!{ActiveEffects:[{Id:23b}]}] run effect give @s minecraft:saturation 1000000 0 true
execute if entity @s[tag=!not-blind-now,nbt={ActiveEffects:[{Id:15b}]}] run function ex3:general/effects/blindness/check
execute unless entity @e[tag=blindness-now,limit=1] if entity @s[scores={food=..7}] run effect give @s minecraft:saturation 1 0 true
execute unless entity @e[tag=blindness-now,limit=1] if entity @s[scores={food=9..}] run effect give @s minecraft:hunger 1 255 true
execute if entity @e[tag=blindness-now,limit=1] run tag @e[tag=blindness-now] remove blindness-now

#耐性
execute if entity @s[nbt=!{ActiveEffects:[{Id:11b}]}] run effect give @s minecraft:resistance 1000000 4 true
