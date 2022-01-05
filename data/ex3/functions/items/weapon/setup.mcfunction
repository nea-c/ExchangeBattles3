#メイン配置の呼び出し

scoreboard players set #slot_pos weapon 1
scoreboard players operation #slot_pos value = @s weapon_pos
execute if score @s weapon matches 1 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0001
execute if score @s weapon matches 2 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0002
execute if score @s weapon matches 3 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0003
execute if score @s weapon matches 4 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0004
execute if score @s weapon matches 5 run function ex3:items/weapon/0005/set
execute if score @s weapon matches 6 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0006
execute if score @s weapon matches 7 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0007
execute if score @s weapon matches 8 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0008
execute if score @s weapon matches 9 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0009
execute if score @s weapon matches 10 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0010
execute if score @s weapon matches 11 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0011
execute if score @s weapon matches 12 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0012
execute if score @s weapon matches 13 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0013
execute if score @s weapon matches 14 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0014
execute if score @s weapon matches 15 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0015
execute if score @s weapon matches 16 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0016
execute if score @s weapon matches 17 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0017
execute if score @s weapon matches 18 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0018
execute if score @s weapon matches 19 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0019
execute if score @s weapon matches 20 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0020
execute if score @s weapon matches 21 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0021
execute if score @s weapon matches 22 run loot replace block 0 0 0 container.0 loot ex3:items/weapon/0022

data modify block 0 0 0 Items[0].tag.weapon set value 1
execute store result block 0 0 0 Items[0].tag.weapon_number int 1 run scoreboard players get @s weapon
execute if data block 0 0 0 Items[] run function ex3:items/loot/end

scoreboard players reset #slot_pos