#スキル15

tp @s ~ ~ ~ ~22 ~
playsound minecraft:item.bucket.fill master @a ~ ~ ~ 1 2
particle minecraft:splash ~ ~ ~ 0 0.4 0 0.1 10 force
#particle minecraft:falling_water ~ ~ ~ 0 1 0 0.1 5 force


execute positioned 0.0 0.0 0.0 rotated ~ -35 positioned ^ ^ ^1.2 run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["sprink_arrow_aec1"]}
summon minecraft:arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],CustomName:'{"text":"スプリンクラーアロー"}',Tags:["sprink_arrow","sprink_arrow1","this","sprink_arrow_obj_tp"],Color:-1,Motion:[0.0d,0.0d,0.0d]}

execute if entity @e[tag=this,tag=sprink_arrow1,limit=1] as @e[tag=this,tag=sprink_arrow1] run data modify entity @s Motion set from entity @e[type=area_effect_cloud,tag=sprink_arrow_aec1,limit=1] Pos
kill @e[type=area_effect_cloud,tag=sprink_arrow_aec1,limit=1]
execute if entity @e[tag=this,tag=sprink_arrow1,limit=1] as @e[tag=this,tag=sprink_arrow1] run tag @s remove sprink_arrow1



execute positioned 0.0 0.24 0.0 rotated ~11 0 positioned ^ ^ ^1.2 run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["sprink_arrow_aec2"]}
summon minecraft:arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],CustomName:'{"text":"スプリンクラーアロー"}',Tags:["sprink_arrow","sprink_arrow2","this","sprink_arrow_obj_tp","center"],Color:-1,Motion:[0.0d,0.0d,0.0d]}

execute if entity @e[tag=this,tag=sprink_arrow2,limit=1] as @e[tag=this,tag=sprink_arrow2] run data modify entity @s Motion set from entity @e[type=area_effect_cloud,tag=sprink_arrow_aec2,limit=1] Pos
kill @e[type=area_effect_cloud,tag=sprink_arrow_aec2,limit=1]
execute if entity @e[tag=this,tag=sprink_arrow2,limit=1] as @e[tag=this,tag=sprink_arrow2] run tag @s remove sprink_arrow2



execute positioned 0.0 0.0 0.0 rotated ~ 35 positioned ^ ^ ^1.2 run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["sprink_arrow_aec3"]}
summon minecraft:arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],CustomName:'{"text":"スプリンクラーアロー"}',Tags:["sprink_arrow","sprink_arrow3","this","sprink_arrow_obj_tp"],Color:-1,Motion:[0.0d,0.0d,0.0d]}

execute if entity @e[tag=this,tag=sprink_arrow3,limit=1] as @e[tag=this,tag=sprink_arrow3] run data modify entity @s Motion set from entity @e[type=area_effect_cloud,tag=sprink_arrow_aec3,limit=1] Pos
kill @e[type=area_effect_cloud,tag=sprink_arrow_aec3,limit=1]
execute if entity @e[tag=this,tag=sprink_arrow3,limit=1] as @e[tag=this,tag=sprink_arrow3] run tag @s remove sprink_arrow3


scoreboard players operation @e[type=arrow,tag=sprink_arrow,tag=this] team_number = @s team_number



scoreboard players operation #- number = @s number
execute as @a if score @s number = #- number run tag @s add this2
scoreboard players reset #-
execute if entity @e[tag=this,limit=1] as @e[tag=this] run data modify entity @s Owner set from entity @a[tag=this2,limit=1] UUID
execute if entity @e[tag=this,limit=1] as @e[tag=this] run data modify entity @s damage set value 1.2
execute if entity @e[tag=this,limit=1] as @e[tag=this] run tag @s remove this

execute if entity @a[tag=this2,limit=1] as @a[tag=this2] run tag @s remove this2
