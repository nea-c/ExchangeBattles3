#サポート配置の呼び出し
scoreboard players operation #- number = @s number
scoreboard players operation #slot_pos value = @s support_pos
data remove block 0 0 0 Items[]
execute if score @s support matches 1 run loot replace block 0 0 0 container.0 loot ex3:items/support/0001
execute if score @s support matches 2 run loot replace block 0 0 0 container.0 loot ex3:items/support/0002
execute if score @s support matches 3 run loot replace block 0 0 0 container.0 loot ex3:items/support/0003
execute if score @s support matches 4 run loot replace block 0 0 0 container.0 loot ex3:items/support/0004
execute if score @s support matches 5 run loot replace block 0 0 0 container.0 loot ex3:items/support/0005

execute if score @s support matches 6 if entity @e[tag=support6-time,limit=1] as @e[tag=support6-time] if score @s number = #- number run tag @s add support6-breaking
execute if score @s support matches 6 unless entity @e[tag=support6-breaking,limit=1] run function ex3:items/support/0006/set
execute if score @s support matches 6 if entity @e[tag=support6-breaking,limit=1] as @e[tag=support6-breaking] run tag @s remove support6-breaking

execute if score @s support matches 7 run loot replace block 0 0 0 container.0 loot ex3:items/support/0007
execute if score @s support matches 8 run loot replace block 0 0 0 container.0 loot ex3:items/support/0008
execute if score @s support matches 9 run loot replace block 0 0 0 container.0 loot ex3:items/support/0009
execute if score @s support matches 10 run loot replace block 0 0 0 container.0 loot ex3:items/support/0010
execute if score @s support matches 11 run loot replace block 0 0 0 container.0 loot ex3:items/support/0011
execute if score @s support matches 12 run loot replace block 0 0 0 container.0 loot ex3:items/support/0012
execute if score @s support matches 13 run loot replace block 0 0 0 container.0 loot ex3:items/support/0013
execute if score @s support matches 14 run loot replace block 0 0 0 container.0 loot ex3:items/support/0014
execute if score @s support matches 15 run loot replace block 0 0 0 container.0 loot ex3:items/support/0015
execute if score @s support matches 16 run loot replace block 0 0 0 container.0 loot ex3:items/support/0016
execute if score @s support matches 17 run loot replace block 0 0 0 container.0 loot ex3:items/support/0017
execute if score @s support matches 18 run loot replace block 0 0 0 container.0 loot ex3:items/support/0018
execute if score @s support matches 19 run loot replace block 0 0 0 container.0 loot ex3:items/support/0019
execute if score @s support matches 20 run loot replace block 0 0 0 container.0 loot ex3:items/support/0020
execute if score @s support matches 21 run loot replace block 0 0 0 container.0 loot ex3:items/support/0021
execute if score @s support matches 22 run loot replace block 0 0 0 container.0 loot ex3:items/support/0022

data modify block 0 0 0 Items[0].tag.support set value 1
execute store result block 0 0 0 Items[0].tag.support_number int 1 run scoreboard players get @s support
execute if data block 0 0 0 Items[] run function ex3:items/loot/end

scoreboard players reset #-
scoreboard players reset #slot_pos