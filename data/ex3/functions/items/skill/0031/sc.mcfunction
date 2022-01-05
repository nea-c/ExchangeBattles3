tag @a[tag=skill31-buff-add] add skill31-buff
execute as @a[tag=skill31-buff-add] run clear @s #ex3:all{armor_item:1}
execute as @a[tag=skill31-buff-add] run tag @s add disable_team-armor
execute as @a[tag=skill31-buff-add] run function ex3:items/team_armor/setup
tag @a[tag=skill31-buff-add] remove skill31-buff-add