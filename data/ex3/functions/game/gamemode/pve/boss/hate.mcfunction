#scoreboard players operation @e[tag=hurt_by,limit=1] boss_hate += @s damage_resist
#scoreboard players operation @e[tag=_by,limit=1] boss_hate2 += @s damage_resist
execute if entity @s[tag=neac-b] if score @s damage_resist matches 1.. run playsound minecraft:entity.villager.hurt master @a ~ ~ ~ 4 1.27

