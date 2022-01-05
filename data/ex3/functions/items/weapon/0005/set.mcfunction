#メイン5
execute unless score #slot_pos value = #slot_pos value run tag @s add weapon5_S.Enable
execute if entity @s[tag=weapon5_S.Enable] run scoreboard players set #slot_pos weapon 1
execute if entity @s[tag=weapon5_S.Enable] run scoreboard players operation #slot_pos value = @s weapon_pos
loot replace block 0 0 0 container.0 loot ex3:items/weapon/0005
execute if entity @s[tag=!weapon5_charged] run tag @s add weapon5_change
execute if entity @s[tag=weapon5_change] run data remove block 0 0 0 Items[0].tag.Charged
execute if entity @s[tag=weapon5_change] run data remove block 0 0 0 Items[0].tag.ChargedProjectiles
execute if entity @s[tag=weapon5_change] run tag @s remove weapon5_change

execute if entity @s[tag=weapon5_S.Enable] run data modify block 0 0 0 Items[0].tag.weapon set value 1
execute if entity @s[tag=weapon5_S.Enable] store result block 0 0 0 Items[0].tag.weapon_number int 1 run scoreboard players get @s weapon
execute if entity @s[tag=weapon5_S.Enable] run function ex3:items/loot/end
execute if entity @s[tag=weapon5_S.Enable] run tag @s remove weapon5_S.Enable


