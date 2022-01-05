#弓使用時の矢のnbt変更



execute if score #has_item value matches 10004 as @e[tag=setup] run tag @s add weapon4

execute if entity @s[scores={support=15}] run function ex3:items/support/0015/bow


# 矢の消費いろいろする場合のやつ
scoreboard players operation #tmp arrow = @s arrow

execute if entity @s[scores={arrow=1..}] run scoreboard players remove @s arrow 1

execute if entity @s[tag=skill35-now] run function ex3:items/skill/0035/bow

scoreboard players reset #tmp arrow