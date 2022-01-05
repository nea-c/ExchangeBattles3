
execute if score #health_calc value matches 1 run attribute @s generic.max_health modifier add 0-0-0-0-0 "health" -19 add
execute if score #health_calc value matches 2 run attribute @s generic.max_health modifier add 0-0-0-0-0 "health" -18 add
execute if score #health_calc value matches 3 run attribute @s generic.max_health modifier add 0-0-0-0-0 "health" -17 add
execute if score #health_calc value matches 4 run attribute @s generic.max_health modifier add 0-0-0-0-0 "health" -16 add
execute if score #health_calc value matches 5 run attribute @s generic.max_health modifier add 0-0-0-0-0 "health" -15 add
execute if score #health_calc value matches 6 run attribute @s generic.max_health modifier add 0-0-0-0-0 "health" -14 add
execute if score #health_calc value matches 7 run attribute @s generic.max_health modifier add 0-0-0-0-0 "health" -13 add
execute if score #health_calc value matches 8 run attribute @s generic.max_health modifier add 0-0-0-0-0 "health" -12 add
execute if score #health_calc value matches 9 run attribute @s generic.max_health modifier add 0-0-0-0-0 "health" -11 add
execute if score #health_calc value matches 10 run attribute @s generic.max_health modifier add 0-0-0-0-0 "health" -10 add
execute if score #health_calc value matches 11 run attribute @s generic.max_health modifier add 0-0-0-0-0 "health" -9 add
execute if score #health_calc value matches 12 run attribute @s generic.max_health modifier add 0-0-0-0-0 "health" -8 add
execute if score #health_calc value matches 13 run attribute @s generic.max_health modifier add 0-0-0-0-0 "health" -7 add
execute if score #health_calc value matches 14 run attribute @s generic.max_health modifier add 0-0-0-0-0 "health" -6 add
execute if score #health_calc value matches 15 run attribute @s generic.max_health modifier add 0-0-0-0-0 "health" -5 add
execute if score #health_calc value matches 16 run attribute @s generic.max_health modifier add 0-0-0-0-0 "health" -4 add
execute if score #health_calc value matches 17 run attribute @s generic.max_health modifier add 0-0-0-0-0 "health" -3 add
execute if score #health_calc value matches 18 run attribute @s generic.max_health modifier add 0-0-0-0-0 "health" -2 add
execute if score #health_calc value matches 19 run attribute @s generic.max_health modifier add 0-0-0-0-0 "health" -1 add

effect give @s minecraft:health_boost 1 0 true
effect clear @s minecraft:health_boost

effect give @s minecraft:regeneration 1 40 true
tag @s add health_display_remove
