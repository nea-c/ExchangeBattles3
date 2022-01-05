#スキル28


scoreboard players operation #- team_number = @s team_number
execute as @e[tag=skill28-pointer] if score @s team_number = #- team_number run tag @s add skill28-banner-anchor

execute anchored eyes positioned ^ ^ ^2 run function ex3:items/skill/0028/target

scoreboard players operation #- number = @s number
execute as @e[tag=skill28-p-anchor] if score @s number = #- number run tag @s add this2

execute unless entity @s[tag=skill28-check] if entity @e[tag=this2,limit=1] run kill @e[tag=this2]

execute if entity @s[tag=skill28-check] unless entity @e[tag=this2,limit=1] run tag @s add skill28-pa-summon
execute if entity @s[tag=skill28-check] if entity @s[tag=skill28-pa-summon] run summon marker 0 0 0 {Tags:["skill28-p-anchor","this"]}
execute if entity @s[tag=skill28-check] if entity @s[tag=skill28-pa-summon] run scoreboard players operation @e[tag=this] number = @s number
execute if entity @s[tag=skill28-check] if entity @s[tag=skill28-pa-summon] run scoreboard players operation @e[tag=this] team_number = @s team_number
execute if entity @s[tag=skill28-check] if entity @s[tag=skill28-pa-summon] run tag @e[tag=this] remove this
execute if entity @s[tag=skill28-check] if entity @s[tag=skill28-pa-summon] run tag @s remove skill28-pa-summon
execute if entity @s[tag=skill28-check] run scoreboard players add @e[tag=this2,limit=1] value2 1
execute if entity @s[tag=skill28-check] if entity @e[tag=this2,scores={value2=1},limit=1] run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1
execute if entity @s[tag=skill28-check] if entity @e[tag=this2,scores={value2=6},limit=1] run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.28
execute if entity @s[tag=skill28-check] if entity @e[tag=this2,scores={value2=11},limit=1] run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.51
execute if entity @s[tag=skill28-check] if entity @e[tag=this2,scores={value2=16..},limit=1] run tag @s add skill28-tp
execute if entity @s[tag=skill28-check] if entity @e[tag=this2,scores={value2=16..},limit=1] anchored eyes positioned ^ ^ ^2 run function ex3:items/skill/0028/target
execute if entity @s[tag=skill28-check] run tag @s remove skill28-check

execute unless entity @e[tag=skill28-banner-anchor,limit=1] run kill @e[tag=skill28-p-anchor]

scoreboard players reset #-

execute if entity @e[tag=this2,limit=1] run tag @e[tag=this2] remove this2
execute if entity @e[tag=skill28-banner-anchor,limit=1] as @e[tag=skill28-banner-anchor] run tag @s remove skill28-banner-anchor
