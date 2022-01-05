#バトルロイヤル処理
execute store result score #emerald value if entity @a[team=ffa,scores={max_health=0..}]

data modify storage ex3:game bossbar.point set value '[{"text":" "},{"score":{"name":"#emerald","objective":"value"},"bold":true,"color":"yellow"},{"text":"/","color":"yellow","bold":true},{"score":{"name":"#compare","objective":"value"},"bold":true,"color":"yellow"}]'

execute if score #emerald value matches ..1 run scoreboard players reset #timer
execute unless score #timer value matches 1 run function ex3:game/end/judge
