
data modify block 0 0 0 Items[{Slot:0b}].tag.Enchantments set value [{}]

#execute if data block 0 0 0 Items[{Slot:0b}].tag.display.Lore[] run data modify block 0 0 0 Items[{Slot:0b}].tag.display.Lore append value '{"text":""}'
data modify block 0 0 0 Items[{Slot:0b}].tag.display.Lore append value '[{"text":"+ ","italic":false,"color":"white"},{"text":"改造","color":"#bbbb00"}]'
data modify block 0 0 0 Items[{Slot:0b}].tag.support13buff set value 1

execute if data block 0 0 0 Items[{Slot:0b,id:"minecraft:bow"}] run tag @s add support13-buffArrowItem
execute if data block 0 0 0 Items[{Slot:0b,id:"minecraft:crossbow"}] run tag @s add support13-buffArrowItem

execute if data block 0 0 0 Items[{Slot:0b,id:"minecraft:bow"}] run data modify block 0 0 0 Items[{Slot:0b}].tag.display.Lore append value '[{"text":"  ","italic":false,"color":"white"},{"text":"射出速度15%上昇","color":"white"}]'

execute if data block 0 0 0 Items[{Slot:0b,id:"minecraft:crossbow"}] run data modify block 0 0 0 Items[{Slot:0b}].tag.Enchantments append value {id:"minecraft:quick_charge",lvl:1s}
execute if data block 0 0 0 Items[{Slot:0b,id:"minecraft:crossbow"}] run data modify block 0 0 0 Items[{Slot:0b}].tag.display.Lore append value '[{"text":"  ","italic":false,"color":"white"},{"text":"チャージ速度上昇","color":"white"}]'


execute if entity @s[tag=!support13-buffArrowItem] run data modify block 0 0 0 Items[{Slot:0b}].tag.display.Lore append value '[{"text":"  ","italic":false,"color":"white"},{"text":"攻撃速度20%上昇","color":"white"}]'
execute if entity @s[tag=!support13-buffArrowItem] store result score #tmp value run data get block 0 0 0 Items[{Slot:0b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_speed"}].Amount 10000

execute if entity @s[tag=!support13-buffArrowItem] run scoreboard players set #tmp drop 40000
execute if entity @s[tag=!support13-buffArrowItem] run scoreboard players set #tmp value2 120

execute if entity @s[tag=!support13-buffArrowItem] run scoreboard players operation #tmp value += #tmp drop
execute if entity @s[tag=!support13-buffArrowItem] run scoreboard players operation #tmp value *= #tmp value2
execute if entity @s[tag=!support13-buffArrowItem] run scoreboard players operation #tmp value /= #100 value

execute if entity @s[tag=!support13-buffArrowItem] run scoreboard players operation #tmp value -= #tmp drop

execute if entity @s[tag=!support13-buffArrowItem] store result block 0 0 0 Items[{Slot:0b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_speed"}].Amount double 0.0001 run scoreboard players get #tmp value
#execute if entity @s[tag=!support13-buffArrowItem] run data modify block 0 0 0 Items[{Slot:0b}].tag.AttributeModifiers append value {Slot:"mainhand",UUID:[I;0,1230,58276,0],AttributeName:"minecraft:generic.attack_speed",Amount:0.2,Operation:2}
execute if entity @s[tag=support13-buffArrowItem] run tag @s remove support13-buffArrowItem

scoreboard players reset #tmp
scoreboard players reset #tmp2