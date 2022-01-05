#スキル11

#tag @s[tag=hit] add fire_arrow_anchor
execute facing entity @s feet positioned 0.0 0.4 0.0 positioned ^ ^ ^3 run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["fire_arrow_aec"]}
summon arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],CustomName:'{"text":"灯火矢"}',Tags:["fire_arrow","this"],Color:-1,Fire:4000s,Motion:[0.0d,0.0d,0.0d],damage:1}

execute if entity @e[tag=this,limit=1] as @e[tag=this] run data modify entity @s Motion set from entity @e[tag=fire_arrow_aec,limit=1] Pos
execute if entity @e[tag=this,limit=1] run kill @e[tag=fire_arrow_aec,limit=1]

scoreboard players operation @e[type=arrow,tag=fire_arrow,tag=this] number = @e[type=blaze,tag=fire_execution,limit=1] number
scoreboard players operation @e[type=arrow,tag=fire_arrow,tag=this] team_number = @e[type=blaze,tag=fire_execution,limit=1] team_number



scoreboard players operation #- number = @e[type=blaze,tag=fire_execution,limit=1] number
execute as @a if score @s number = #- number run tag @s add this2
scoreboard players reset #-
execute as @e[tag=this,type=arrow,sort=nearest,limit=1] run data modify entity @s Owner set from entity @a[tag=this2,sort=nearest,limit=1] UUID
execute if entity @a[tag=this2,sort=nearest,limit=1] as @a[tag=this2] run tag @s remove this2

execute if entity @e[tag=this,limit=1] as @e[tag=this] run tag @s remove this

#execute if entity @s[tag=fire_arrow_anchor] run tag @s remove fire_arrow_anchor


tag @s remove hit