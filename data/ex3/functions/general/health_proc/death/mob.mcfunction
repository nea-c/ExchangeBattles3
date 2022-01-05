
execute if entity @s[tag=summoned] run function ex3:items/skill/killed-summon


execute if entity @s[type=zombie] run playsound entity.zombie.death hostile @a ~ ~ ~ 1 1
execute if entity @s[type=husk] run playsound entity.husk.death hostile @a ~ ~ ~ 1 1
execute if entity @s[type=drowned] run playsound entity.drowned.death hostile @a ~ ~ ~ 1 1
execute if entity @s[type=skeleton] run playsound entity.skeleton.death hostile @a ~ ~ ~ 1 1
execute if entity @s[type=wither_skeleton] run playsound entity.wither_skeleton.death hostile @a ~ ~ ~ 1 1
execute if entity @s[type=creeper] run playsound entity.creeper.death hostile @a ~ ~ ~ 1 1
execute if entity @s[type=shulker] run playsound entity.shulker.death hostile @a ~ ~ ~ 1 1
execute if entity @s[type=phantom] run playsound entity.phantom.death hostile @a ~ ~ ~ 1 1
execute if entity @s[type=vindicator] run playsound entity.vindicator.death hostile @a ~ ~ ~ 1 1

kill @s