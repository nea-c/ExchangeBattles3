tag @s add skill2_me-
execute as @e[tag=skill2-meltshock] run function ex3:items/skill/0002/hit/check
tag @s remove skill2_me-

function ex3:items/skill/0002/hit/1

tag @s remove hit