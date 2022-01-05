tag @s add this
execute as @a[tag=hurt_by] unless score @s number = @e[tag=this,limit=1,sort=nearest] value2 as @e[tag=this,limit=1,sort=nearest] run function ex3:general/health_proc/damage/sandbag-end
scoreboard players operation #damage_int value = @s damage_resist
scoreboard players operation #damage_int value /= #10 value
scoreboard players operation #damage_frac value = @s damage_resist
scoreboard players operation #damage_frac value %= #10 value
scoreboard players operation @s total_taken += @s damage_resist
scoreboard players operation #damage_int2 value = @s total_taken
scoreboard players operation #damage_int2 value /= #10 value
scoreboard players operation #damage_frac2 value = @s total_taken
scoreboard players operation #damage_frac2 value %= #10 value
scoreboard players operation @s value2 = @s last_hurt_by
scoreboard players add @s value 1
execute if score @s value matches 1 run tellraw @a[tag=hurt_by] {"text":"--------------------------------"}
execute if entity @a[tag=hurt_by,limit=1] run tellraw @a[tag=hurt_by] [{"score":{"name":"@s","objective":"value"}},{"text":". "},{"score":{"name":"#damage_int","objective":"value"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"#damage_frac","objective":"value"},"color":"yellow"},{"text":" - ","color":"gray"},{"score":{"name":"#damage_int2","objective":"value"},"color":"gray"},{"text":".","color":"gray"},{"score":{"name":"#damage_frac2","objective":"value"},"color":"gray"}]
scoreboard players reset #damage_int
scoreboard players reset #damage_frac
scoreboard players reset #damage_int2
scoreboard players reset #damage_frac2
tag @s remove this
