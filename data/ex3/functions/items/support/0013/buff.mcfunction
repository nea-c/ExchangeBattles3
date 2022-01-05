
data modify block 0 0 0 Items[{Slot:0b}].tag.Enchantments set value [{}]

#execute if data block 0 0 0 Items[{Slot:0b}].tag.display.Lore[] run data modify block 0 0 0 Items[{Slot:0b}].tag.display.Lore append value '{"text":""}'
data modify block 0 0 0 Items[{Slot:0b}].tag.display.Lore append value '[{"text":"+ ","italic":false,"color":"white"},{"text":"クライオ","color":"aqua"}]'
data modify block 0 0 0 Items[{Slot:0b}].tag.support13buff set value 1

execute if data block 0 0 0 Items[{Slot:0b,id:"minecraft:bow"}] run tag @s add support13-buffArrowItem
execute if data block 0 0 0 Items[{Slot:0b,id:"minecraft:crossbow"}] run tag @s add support13-buffArrowItem

execute if entity @s[tag=!support13-buffArrowItem] run data modify block 0 0 0 Items[{Slot:0b}].tag.display.Lore append value '[{"text":"  ","italic":false,"color":"white"},{"text":"対象に冷気を放つ","color":"white"}]'
execute if entity @s[tag=support13-buffArrowItem] run data modify block 0 0 0 Items[{Slot:0b}].tag.display.Lore append value '[{"text":"  ","italic":false,"color":"white"},{"text":"放つ矢に冷気を乗せる","color":"white"}]'

execute if entity @s[tag=support13-buffArrowItem] run tag @s remove support13-buffArrowItem

