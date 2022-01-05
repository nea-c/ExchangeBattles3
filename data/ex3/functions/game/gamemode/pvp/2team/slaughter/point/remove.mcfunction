#スローター処理
execute if entity @s[team=emerald] if score #emerald value matches 1.. run scoreboard players remove #emerald value 1
execute if entity @s[team=purpur] if score #purpur value matches 1.. run scoreboard players remove #purpur value 1