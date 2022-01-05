
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["damage_indicator_aec"],Duration:2}
data merge storage random: {data:{min:0,max:360}}

execute store result entity @e[tag=damage_indicator_aec,limit=1] Rotation[0] float 1 run function ex3:general/random
execute if entity @a[tag=last_hurt_by,limit=1] facing entity @e[tag=last_hurt_by,limit=1] eyes rotated ~ 0 positioned ^ ^ ^0.4 rotated as @e[tag=damage_indicator_aec,limit=1] positioned ^ ^ ^0.7 run summon armor_stand ~ ~0.8 ~ {Tags:["damage_indicator","indicator_number_set"],CustomNameVisible:1b,CustomName:'{"text":""}',Marker:1b,Invisible:1b,Small:1b}
execute unless entity @a[tag=last_hurt_by,limit=1] rotated as @e[tag=damage_indicator_aec,limit=1] positioned ^ ^ ^0.7 run summon armor_stand ~ ~0.8 ~ {Tags:["damage_indicator","indicator_number_set"],CustomNameVisible:1b,CustomName:'{"text":""}',Marker:1b,Invisible:1b,Small:1b}
kill @e[tag=damage_indicator_aec]

scoreboard players operation @e[tag=indicator_number_set,limit=1] value2 = @s health
scoreboard players operation @e[tag=indicator_number_set,limit=1] value2 -= #health value
execute as @e[tag=indicator_number_set,limit=1] if score @s value2 matches ..-1 run scoreboard players operation @s value2 *= #-1 value
scoreboard players operation @e[tag=indicator_number_set,limit=1] health = @e[tag=indicator_number_set,limit=1] value2
scoreboard players operation @e[tag=indicator_number_set,limit=1] health /= #10 value
scoreboard players operation @e[tag=indicator_number_set,limit=1] health_display = @e[tag=indicator_number_set,limit=1] value2
scoreboard players operation @e[tag=indicator_number_set,limit=1] health_display %= #10 value

execute if score @s health < #health value as @e[tag=indicator_number_set,limit=1] run loot replace block 0 0 0 container.0 loot ex3:general/indicator/minus
execute if score @s health > #health value as @e[tag=indicator_number_set,limit=1] run loot replace block 0 0 0 container.0 loot ex3:general/indicator/plus

data modify entity @e[tag=indicator_number_set,limit=1] CustomName set from block 0 0 0 Items[0].tag.display.Name
data remove block 0 0 0 Items[]

#scoreboard players reset @e[tag=indicator_number_set,limit=1]
tag @e[tag=indicator_number_set,limit=1] remove indicator_number_set

execute if entity @s[tag=sandbag] run scoreboard players operation @s health = @s max_health
scoreboard players reset #health