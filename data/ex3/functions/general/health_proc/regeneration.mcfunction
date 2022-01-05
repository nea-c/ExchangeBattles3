#自然回復
execute if entity @s[tag=!regene_heal] if score @s regeneration matches 5000.. run tag @s add regene_heal
execute if entity @s[tag=regene_heal] run scoreboard players operation #health value = @s health
execute if entity @s[tag=regene_heal] run scoreboard players operation #health value2 = @s max_health
execute if entity @s[tag=regene_heal] run scoreboard players operation #health value2 *= #10 value
execute if entity @s[tag=regene_heal,tag=!regene-trigger] if score @s health < #health value2 run scoreboard players add @s health 10
execute if entity @s[tag=regene_heal,tag=!regene-trigger] unless score @s health = #health value at @s run function ex3:general/health_proc/damage/indicator/summon
execute if entity @s[tag=regene_heal] run scoreboard players reset #health
execute if entity @s[tag=regene_heal] run scoreboard players remove @s regeneration 5000
execute if entity @s[tag=regene-trigger] run tag @s remove regene-trigger
execute if entity @s[tag=regene_heal] run tag @s remove regene_heal