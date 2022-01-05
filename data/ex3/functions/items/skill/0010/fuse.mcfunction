#スキル10

function ex3:items/skill/0010/replace/check

tag @s remove fuse
effect clear @s
#scoreboard players operation #- team_number = @s team_number
#execute as @e[scores={max_health=0..},distance=..4.2] unless score @s team_number = #- team_number run tag @s add hit
tag @s add me
execute as @e[scores={max_health=0..},distance=..4,tag=!me] run tag @s add hit
tag @s remove me
execute if entity @e[tag=hit,limit=1] run function ex3:items/skill/0010/hit
data merge entity @s {Fuse:0s}
#scoreboard players reset #-