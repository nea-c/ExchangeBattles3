#イーミット処理

execute if entity @s[tag=!into_void] at @s positioned ~ ~0.5 ~ run function ex3:game/gamemode/pvp/2team/emit/object_summon
tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"selector":"@s"},{"text":"は目標を喪失した"}]

execute if entity @s[team=emerald] run scoreboard players operation #emerald value *= #60 value
execute if entity @s[team=emerald] run scoreboard players operation #emerald value /= #100 value
execute if entity @s[team=purpur] run scoreboard players operation #purpur value *= #60 value
execute if entity @s[team=purpur] run scoreboard players operation #purpur value /= #100 value

scoreboard players reset #compare number
execute at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 100000 0.4
