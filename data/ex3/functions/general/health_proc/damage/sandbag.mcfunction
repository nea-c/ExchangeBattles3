tag @s add this
execute as @a[tag=hurt_by] unless score @s number = @e[tag=this,limit=1,sort=nearest] value2 as @e[tag=this,limit=1,sort=nearest] run function ex3:general/health_proc/damage/sandbag-end

scoreboard players operation #damage_int value = @s damage_resist
scoreboard players operation #damage_frac value = #damage_int value
scoreboard players operation @s total_taken += #damage_int value

scoreboard players operation #damage_int value /= #10 value
scoreboard players operation #damage_frac value %= #10 value


scoreboard players operation #damage_int2 value = @s total_taken
scoreboard players operation #damage_frac2 value = #damage_int2 value

scoreboard players operation #damage_int2 value /= #10 value
scoreboard players operation #damage_frac2 value %= #10 value

scoreboard players operation @s value2 = @s last_hurt_by


scoreboard players add @s value 1


scoreboard players operation #damage_int3 value = @s total_taken
scoreboard players operation #damage_int3 value /= @s value
scoreboard players operation #damage_frac3 value = #damage_int3 value

scoreboard players operation #damage_int3 value /= #10 value
scoreboard players operation #damage_frac3 value %= #10 value

execute if score @s value matches 1 run tellraw @a[tag=hurt_by] {"text":"--------------------------------"}

data modify storage tmp: text append value '{"translate":"%s.","with":[{"score":{"name":"@s","objective":"value"}}]}'
data modify storage tmp: text append value '{"translate":"%s.%s","with":[{"score":{"name":"#damage_int","objective":"value"}},{"score":{"name":"#damage_frac","objective":"value"}}],"color":"yellow"}'
data modify storage tmp: text append value '{"translate":" %s.%s (SUM)","with":[{"score":{"name":"#damage_int2","objective":"value"}},{"score":{"name":"#damage_frac2","objective":"value"}}],"color":"gray"}'
data modify storage tmp: text append value '{"translate":" %s.%s (AVG)","with":[{"score":{"name":"#damage_int3","objective":"value"}},{"score":{"name":"#damage_frac3","objective":"value"}}],"color":"gray"}'

execute if entity @a[tag=hurt_by,limit=1] run tellraw @a[tag=hurt_by] {"nbt":"text[]","storage":"tmp:","separator": " ","interpret": true}

data remove storage tmp: text
scoreboard players reset #damage_int
scoreboard players reset #damage_frac
scoreboard players reset #damage_int2
scoreboard players reset #damage_frac2
scoreboard players reset #damage_int3
scoreboard players reset #damage_frac3
tag @s remove this
