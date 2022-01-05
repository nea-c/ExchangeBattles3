
execute anchored eyes positioned ^ ^ ^ run tag @e[type=minecraft:potion,distance=..3.5,scores={team_number=1..}] add team_joined
execute anchored eyes positioned ^ ^ ^ run tag @e[type=minecraft:potion,tag=!team_joined,distance=..3.5,sort=nearest,limit=1] add setup
execute anchored eyes positioned ^ ^ ^ run scoreboard players operation @e[type=minecraft:potion,tag=!team_joined,distance=..3.5,sort=nearest,limit=1] number = @s number
execute anchored eyes positioned ^ ^ ^ run scoreboard players operation @e[type=minecraft:potion,tag=!team_joined,distance=..3.5,sort=nearest,limit=1] team_number = @s team_number
execute anchored eyes positioned ^ ^ ^ run tag @e[type=minecraft:potion,distance=..3.5,scores={team_number=1..}] remove team_joined

scoreboard players set #- value -1
scoreboard players set #- value2 -1

execute store result score #- value run data get entity @e[type=potion,tag=setup,limit=1] Item.tag.CustomModelData

execute if score #- value matches 30000.. run scoreboard players operation #- value %= #10000 value

execute if score #- value = @s skill1 run scoreboard players operation #- value2 = @s skill1_ct
execute if score #- value = @s skill2 run scoreboard players operation #- value2 = @s skill2_ct
execute if score #- value = @s skill3 run scoreboard players operation #- value2 = @s skill3_ct




#アトランダムアロー
execute if score #- value matches 33 if score #- value2 matches 0 run function ex3:items/skill/0033/use_check


#グレネード
execute if score #- value matches 34 if score #- value2 matches 0 run function ex3:items/skill/0034/use







execute as @e[type=potion,tag=setup] run tag @s remove setup
scoreboard players reset #-
