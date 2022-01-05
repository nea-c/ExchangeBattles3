#スキル7
execute if score @s skill1 matches 7 run tag @s add skill1_use
execute if score @s skill2 matches 7 run tag @s add skill2_use
execute if score @s skill3 matches 7 run tag @s add skill3_use
#===================================================================

loot replace block 0 0 0 container.0 loot ex3:items/skill/0007
execute store result score #ct value run data get block 0 0 0 Items[0].tag.cooltime 1
data remove block 0 0 0 Items[]

function ex3:items/skill/bulk




playsound minecraft:block.dispenser.fail master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 1.4
particle minecraft:witch ~ ~ ~ 1.8 1.8 1.8 0.1 40 force

scoreboard players operation #- team_number = @s team_number

execute if entity @e[scores={max_health=0..},distance=..4,limit=1] as @e[scores={max_health=0..},distance=..4] unless score @s team_number = #- team_number unless data entity @s {NoAI:1b} run tag @s add trick
execute if entity @e[scores={max_health=0..},tag=trick,limit=1] as @e[scores={max_health=0..},tag=trick] at @s run tp @s ~ ~ ~ ~ -90
execute if entity @e[scores={max_health=0..},tag=trick,type=!player,limit=1] as @e[scores={max_health=0..},tag=trick,type=!player] run effect give @s slowness 1 1 true


execute if entity @e[scores={max_health=0..},tag=trick,limit=1] as @e[scores={max_health=0..},tag=trick] run tag @s remove trick


scoreboard players reset #-
