#スキル6


scoreboard players add @s value2 1

execute if score @s value2 matches 20.. run scoreboard players reset @s value
execute if score @s value2 matches 20.. run function ex3:items/skill/0006/chase/deploy
execute if score @s value2 matches 20.. if entity @e[tag=hit,limit=1] run function ex3:items/skill/0006/chase/hit


execute if entity @s[tag=end--] run teleport @s ~ ~-512 ~
execute if entity @s[tag=end--] run kill @s