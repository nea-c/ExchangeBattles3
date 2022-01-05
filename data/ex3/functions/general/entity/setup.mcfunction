execute if entity @s[type=ender_dragon] run tag @s add large_entity
execute if entity @s[type=ghast] run tag @s add large_entity
execute if entity @s[type=giant] run tag @s add large_entity

execute if entity @s[type=elder_guardian] run tag @s add large_entity
execute if entity @s[type=ravager] run tag @s add large_entity
execute if entity @s[type=iron_golem] run tag @s add large_entity

execute if entity @s[type=phantom] store result score @s health run data get entity @s Size 1
execute if entity @s[type=phantom] if score @s health matches 12.. run tag @s add large_entity
execute if entity @s[type=slime] store result score @s health run data get entity @s Size 1
execute if entity @s[type=slime] if score @s health matches 6.. run tag @s add large_entity
execute if entity @s[type=magma_cube] store result score @s health run data get entity @s Size 1
execute if entity @s[type=magma_cube] if score @s health matches 6.. run tag @s add large_entity

execute if entity @s[type=drowned] run tag @s add undead
execute if entity @s[type=husk] run tag @s add undead
execute if entity @s[type=phantom] run tag @s add undead
execute if entity @s[type=skeleton] run tag @s add undead
execute if entity @s[type=skeleton_horse] run tag @s add undead
execute if entity @s[type=stray] run tag @s add undead
execute if entity @s[type=wither] run tag @s add undead
execute if entity @s[type=wither_skeleton] run tag @s add undead
execute if entity @s[type=zombie] run tag @s add undead
execute if entity @s[type=zombie_horse] run tag @s add undead
execute if entity @s[type=zombified_piglin] run tag @s add undead
execute if entity @s[type=zombie_villager] run tag @s add undead

execute if entity @s[type=zombie] run tag @s add category_zombie
execute if entity @s[type=husk] run tag @s add category_zombie
execute if entity @s[type=zombified_piglin] run tag @s add category_zombie
execute if entity @s[type=zombie_villager] run tag @s add category_zombie

execute if entity @s[type=slime] run tag @s add category_slime
execute if entity @s[type=magma_cube] run tag @s add category_slime

execute unless score @s max_health matches 1.. run tag @s add health_first
execute if entity @s[tag=health_first] store result score @s max_health run data get entity @s AbsorptionAmount 1
data remove entity @s AbsorptionAmount
execute if entity @s[tag=health_first] unless score @s max_health matches 1.. store result score @s max_health run data get entity @s Health 1


execute if entity @s[tag=health_first] run scoreboard players operation #health value = @s max_health
execute if entity @s[tag=health_first] run scoreboard players operation #health value *= #10 value
execute if entity @s[tag=health_first] run scoreboard players operation @s health = #health value

scoreboard players reset #health

data merge entity @s {Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000}]}

function ex3:general/entity/number-set

# Clone
    scoreboard players operation #tmp value = #number_base mob_number
# FlagIndex << 16
    scoreboard players operation #tmp value *= #2^16 value

# オーバーフローしてたらtag追加
    execute if score #tmp value matches 00.. run tag @s add MobFindFlag0.0
    execute if score #tmp value matches ..-1 run tag @s add MobFindFlag0.1
# 0になるまでやる
    scoreboard players operation #tmp value *= #2 value
    execute if score #tmp value matches 00.. run tag @s add MobFindFlag1.0
    execute if score #tmp value matches ..-1 run tag @s add MobFindFlag1.1
    scoreboard players operation #tmp value *= #2 value
    execute if score #tmp value matches 00.. run tag @s add MobFindFlag2.0
    execute if score #tmp value matches ..-1 run tag @s add MobFindFlag2.1
    scoreboard players operation #tmp value *= #2 value
    execute if score #tmp value matches 00.. run tag @s add MobFindFlag3.0
    execute if score #tmp value matches ..-1 run tag @s add MobFindFlag3.1
    scoreboard players operation #tmp value *= #2 value
    execute if score #tmp value matches 00.. run tag @s add MobFindFlag4.0
    execute if score #tmp value matches ..-1 run tag @s add MobFindFlag4.1
    scoreboard players operation #tmp value *= #2 value
    execute if score #tmp value matches 00.. run tag @s add MobFindFlag5.0
    execute if score #tmp value matches ..-1 run tag @s add MobFindFlag5.1
    scoreboard players operation #tmp value *= #2 value
    execute if score #tmp value matches 00.. run tag @s add MobFindFlag6.0
    execute if score #tmp value matches ..-1 run tag @s add MobFindFlag6.1
    scoreboard players operation #tmp value *= #2 value
    execute if score #tmp value matches 00.. run tag @s add MobFindFlag7.0
    execute if score #tmp value matches ..-1 run tag @s add MobFindFlag7.1
    scoreboard players operation #tmp value *= #2 value
    execute if score #tmp value matches 00.. run tag @s add MobFindFlag8.0
    execute if score #tmp value matches ..-1 run tag @s add MobFindFlag8.1
    scoreboard players operation #tmp value *= #2 value
    execute if score #tmp value matches 00.. run tag @s add MobFindFlag9.0
    execute if score #tmp value matches ..-1 run tag @s add MobFindFlag9.1
    scoreboard players operation #tmp value *= #2 value
    execute if score #tmp value matches 00.. run tag @s add MobFindFlag10.0
    execute if score #tmp value matches ..-1 run tag @s add MobFindFlag10.1
    scoreboard players operation #tmp value *= #2 value
    execute if score #tmp value matches 00.. run tag @s add MobFindFlag11.0
    execute if score #tmp value matches ..-1 run tag @s add MobFindFlag11.1
    scoreboard players operation #tmp value *= #2 value
    execute if score #tmp value matches 00.. run tag @s add MobFindFlag12.0
    execute if score #tmp value matches ..-1 run tag @s add MobFindFlag12.1
    scoreboard players operation #tmp value *= #2 value
    execute if score #tmp value matches 00.. run tag @s add MobFindFlag13.0
    execute if score #tmp value matches ..-1 run tag @s add MobFindFlag13.1
    scoreboard players operation #tmp value *= #2 value
    execute if score #tmp value matches 00.. run tag @s add MobFindFlag14.0
    execute if score #tmp value matches ..-1 run tag @s add MobFindFlag14.1
    scoreboard players operation #tmp value *= #2 value
    execute if score #tmp value matches 00.. run tag @s add MobFindFlag15.0
    execute if score #tmp value matches ..-1 run tag @s add MobFindFlag15.1

scoreboard players reset #tmp


execute if score @s[team=] team_number matches 1 run team join emerald @s
execute if score @s[team=] team_number matches 2 run team join purpur @s

execute if score @s[team=] team_number matches 30 run team join pve @s


execute if entity @s[tag=health_first] run tag @s remove health_first
tag @s add setup_complete
