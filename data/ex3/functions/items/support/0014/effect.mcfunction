
execute store result score #- weapon_pos run data get entity @s SelectedItemSlot

execute unless data entity @s SelectedItem unless score @s weapon_pos = #- weapon_pos run tag @s add support14.before

execute if entity @s[tag=support14.before] run attribute @s generic.movement_speed modifier add 0-0-0-2-0014 "support14" 0.15 multiply
execute if entity @s[tag=support14.before] run tag @s remove support14.before

execute unless data entity @s SelectedItem.tag.weapon unless score @s weapon_pos = #- weapon_pos run tag @s remove support14.hasweapon
execute if data entity @s SelectedItem.tag.weapon run tag @s add support14.hasweaponB

execute if entity @s[tag=support14.hasweaponB,tag=!support14.hasweapon] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0 0 0 0",Radius:0f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:4b,Amplifier:19b,Duration:8,ShowIcon:0b,ShowParticles:0b},{Id:18b,Amplifier:9b,Duration:8,ShowIcon:0b,ShowParticles:0b}]}
execute if entity @s[tag=support14.hasweaponB,tag=!support14.hasweapon] run tag @s add support14.hasweapon
execute if entity @s[tag=support14.hasweaponB] run tag @s remove support14.hasweaponB

scoreboard players reset #-