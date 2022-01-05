#スキル6
scoreboard players operation #- max_health = @s max_health
scoreboard players operation #- max_health *= #10 value
execute at @s anchored eyes run particle minecraft:heart ~ ~1 ~ 0.2 0.4 0.2 1 2 force
scoreboard players operation #health value = @s health
scoreboard players add @s health 60
execute if score @s health > #- max_health run function ex3:general/health_proc/full-recovery
execute unless score @s health = #health value at @s run function ex3:general/health_proc/damage/indicator/summon

tag @s remove skill6-heal

