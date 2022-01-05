scoreboard players set #result total_point 0
scoreboard players operation #result total_point > @a[scores={total_point=1..}] total_point
execute as @a[scores={total_point=1..}] if score @s total_point = #result total_point run tag @s add mvp
execute as @a[tag=mvp] if entity @s[advancements={ex3:achievements/mvp=false}] run advancement grant @s only ex3:achievements/mvp
tag @a[tag=mvp] remove mvp
scoreboard players reset #result