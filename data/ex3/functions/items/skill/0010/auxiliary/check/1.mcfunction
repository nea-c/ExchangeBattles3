#スキル10補助


scoreboard players operation #- number = @s number
execute as @e[tag=skill10-bomb] if score @s number = #- number run tag @s add auxiliary_check

execute if entity @e[tag=auxiliary_check,limit=1] run tag @s add auxiliary_replace

execute if entity @s[tag=auxiliary_replace,tag=skill-bulk] run function ex3:items/skill/0010/auxiliary/check/2
execute if entity @s[tag=auxiliary_replace,tag=!skill-bulk] run function ex3:items/skill/0010/auxiliary/set

#Tagの削除
execute if entity @e[tag=auxiliary_check,limit=1] as @e[tag=auxiliary_check] run tag @s remove auxiliary_check
execute if entity @s[tag=using] run tag @s remove using
execute if entity @s[tag=auxiliary_replace] run tag @s remove auxiliary_replace
scoreboard players reset #-