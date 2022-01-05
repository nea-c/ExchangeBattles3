#スキル25

scoreboard players operation #- number = @s number
scoreboard players operation #- team_number = @s team_number
execute as @a[scores={max_health=0..}] if score @s number = #- number run tag @s add skill25-owner

tag @s add this

scoreboard players add @s value 1


execute if score @s value matches 41 run tag @s add shoot


execute if entity @s[tag=!shoot,tag=!deploy,tag=!end--] if entity @a[tag=skill25-owner,limit=1] as @a[tag=skill25-owner] at @s anchored eyes positioned ^ ^ ^ run tp @e[tag=this,limit=1] ~ ~ ~ ~ ~

scoreboard players set #tmp value 22
execute if entity @s[tag=shoot,tag=!shoot_effect] run function ex3:items/skill/0025/shoot_effect
execute if entity @s[tag=shoot] run function ex3:items/skill/0025/shoot
execute if entity @s[tag=shoot] run scoreboard players add @s value2 1
scoreboard players reset #tmp

execute if entity @s[tag=deploy] run function ex3:items/skill/0025/deploy
execute if entity @s[tag=deploy] run tag @s add end
execute if entity @s[tag=deploy] run tag @s remove shoot


execute if score @s value2 matches 60.. run tag @s add end
execute if entity @s[tag=end] run kill @s


execute if entity @a[tag=skill25-owner,limit=1] as @a[tag=skill25-owner] run tag @s remove skill25-owner

tag @s remove this
scoreboard players reset #-

