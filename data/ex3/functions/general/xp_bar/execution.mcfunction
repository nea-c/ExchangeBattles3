
#scoreboard players set #xp_value value 0
#scoreboard players set #xp_max value 0

execute store result score #slot value run data get entity @s SelectedItemSlot
execute if entity @s[scores={weapon=4..5,arrow=1..}] if score @s weapon_pos = #slot value run tag @s add xp--
execute if entity @s[tag=xp--] run scoreboard players operation #xp_value value = @s arrow
execute if entity @s[tag=xp--] run scoreboard players operation #xp_max value = #max_arrow_base value
execute if entity @s[tag=xp--] run scoreboard players operation #xp_max value += @s arrow_add
execute if entity @s[tag=xp--] run tag @s remove xp--


execute if entity @s[scores={skill1_ct=1..}] if score @s skill1_pos = #slot value run tag @s add xp--
execute if entity @s[tag=xp--] run scoreboard players operation #xp_value value = @s skill1_ct
execute if entity @s[tag=xp--] run scoreboard players set #xp_value value2 20
execute if entity @s[tag=xp--] run scoreboard players operation #xp_max value = @s skill1_ct_max
execute if entity @s[tag=xp--] run tag @s remove xp--


execute if entity @s[scores={skill2_ct=1..}] if score @s skill2_pos = #slot value run tag @s add xp--
execute if entity @s[tag=xp--] run scoreboard players operation #xp_value value = @s skill2_ct
execute if entity @s[tag=xp--] run scoreboard players set #xp_value value2 20
execute if entity @s[tag=xp--] run scoreboard players operation #xp_max value = @s skill2_ct_max
execute if entity @s[tag=xp--] run tag @s remove xp--


execute if entity @s[scores={skill3_ct=1..}] if score @s skill3_pos = #slot value run tag @s add xp--
execute if entity @s[tag=xp--] run scoreboard players operation #xp_value value = @s skill3_ct
execute if entity @s[tag=xp--] run scoreboard players set #xp_value value2 20
execute if entity @s[tag=xp--] run scoreboard players operation #xp_max value = @s skill3_ct_max
execute if entity @s[tag=xp--] run tag @s remove xp--

scoreboard players reset #slot

function ex3:general/xp_bar/set




