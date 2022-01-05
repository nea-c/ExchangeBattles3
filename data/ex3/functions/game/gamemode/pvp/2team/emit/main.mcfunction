#イーミット処理

execute if entity @a[scores={max_health=0..},limit=1] as @a[scores={max_health=0..}] if score @s number = #compare number run tag @s add emit

execute as @a[tag=emit] run effect give @s minecraft:glowing 1 0 true
execute as @a[tag=emit] run effect give @s minecraft:slowness 1 2 true

execute if entity @a[advancements={ex3:general/emit_hurt=true},limit=1] as @a[advancements={ex3:general/emit_hurt=true}] run function ex3:game/gamemode/pvp/2team/emit/attack_object

execute if entity @a[team=emerald,tag=emit,limit=1] as @a[team=emerald,tag=emit] run scoreboard players add #emerald value 1
execute if entity @a[team=purpur,tag=emit,limit=1] as @a[team=purpur,tag=emit] run scoreboard players add #purpur value 1

execute if score #emerald value matches ..-1 run scoreboard players set #emerald value 0
execute if score #purpur value matches ..-1 run scoreboard players set #purpur value 0


execute if entity @e[tag=emit_object,type=minecraft:shulker,limit=1] as @e[tag=emit_object,type=minecraft:shulker] at @s anchored eyes run particle minecraft:firework ~ ~0.5 ~ 0 0 0 1 1 force
execute if entity @a[tag=emit,gamemode=!spectator,limit=1] as @a[tag=emit,gamemode=!spectator] at @s anchored eyes run particle minecraft:firework ~ ~1 ~ 0 0 0 1 1 force
execute if entity @e[tag=emit_d,limit=1] as @e[tag=emit_d] at @s anchored eyes run particle minecraft:firework ~ ~1 ~ 0 0 0 1 1 force


execute unless score #conclusion value matches 1 if score #timer value matches 1 unless entity @a[tag=emit] unless entity @e[tag=emit_object] run function ex3:game/map/emit_object
execute if score #conclusion value matches 1 if score #timer value matches 1 unless entity @a[tag=emit] unless entity @e[tag=emit_object] run function ex3:game/gamemode/pvp/2team/emit/search


execute as @e[tag=emit_object_remove] run scoreboard players add @s value 1
execute as @e[tag=emit_object_remove] if score @s value matches 2.. run kill @s



execute if score #conclusion value matches 1 if score #emerald value matches 600.. run scoreboard players reset #timer
execute if score #conclusion value matches 1 if score #purpur value matches 600.. run scoreboard players reset #timer
execute if score #conclusion value matches 1 unless score #timer value matches 1 run function ex3:game/end/judge
