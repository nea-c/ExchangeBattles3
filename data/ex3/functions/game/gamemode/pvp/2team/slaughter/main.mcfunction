#スローター処理

execute if score #conclusion value matches 1 if score #emerald value matches 3.. run scoreboard players reset #timer
execute if score #conclusion value matches 1 if score #purpur value matches 3.. run scoreboard players reset #timer
execute if score #conclusion value matches 1 unless score #timer value matches 1 run function ex3:game/end/judge

