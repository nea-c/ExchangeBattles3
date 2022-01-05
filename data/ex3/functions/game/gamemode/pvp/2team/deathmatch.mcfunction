#デスマッチ処理
execute store result score #emerald value if entity @a[team=emerald,scores={max_health=0..}]
execute store result score #purpur value if entity @a[team=purpur,scores={max_health=0..}]
execute store result score #compare value if entity @a[team=!,team=!wait,scores={max_health=0..}]

execute if score #emerald value matches 0 run scoreboard players reset #timer
execute if score #purpur value matches 0 run scoreboard players reset #timer
execute unless score #timer value matches 1 run function ex3:game/end/judge
