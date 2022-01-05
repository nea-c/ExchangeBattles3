tag @s add b1s21used
tag @s add b1s22used
execute unless entity @e[tag=boss,scores={health=1..}] run scoreboard players reset @e[scores={boss_hate=1..}] boss_hate
bossbar remove ex3:boss

tag @e[tag=b1s6target] remove b1s6target
kill @e[tag=b1stormbolt]
kill @e[tag=b1sparkrush]
kill @e[tag=b1sparkshot]
kill @e[tag=b1darkcloud]
kill @e[tag=b1razeblow]
kill @e[tag=b1lightning]
kill @e[tag=b1elecflow]
kill @e[tag=b1firearrow]
kill @e[tag=b1s9creeper]
kill @e[tag=b1s22stand]
kill @e[tag=b1s22blast]
kill @e[tag=b1s22thunder]
kill @s

scoreboard players reset #timer