#スキル6
scoreboard players operation #- max_health = @s max_health
scoreboard players operation #- max_health *= #10 value
execute if score @s health < #- max_health run tag @s add skill6-heal-target-c
