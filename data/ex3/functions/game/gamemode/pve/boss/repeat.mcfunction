
execute store result score #emerald value if entity @a[team=pve,scores={max_health=0..}]
execute store result score #purpur value run scoreboard players get @e[tag=boss,limit=1] health

data modify storage ex3:game bossbar.point set value '[{"text":" "},{"score":{"name":"#emerald","objective":"value"},"bold":true,"color":"aqua"},{"text":"/","color":"aqua","bold":true},{"score":{"name":"#compare","objective":"value"},"bold":true,"color":"aqua"}]'





execute if entity @e[tag=neac-b,limit=1] as @e[tag=neac-b] at @s run function ex3:game/gamemode/pve/boss/neac/main
execute if entity @e[tag=neac-b,limit=1] run function ex3:game/gamemode/pve/boss/neac/repeat



execute if score #emerald value matches ..0 run scoreboard players reset #timer
execute unless score #timer value matches 1 run function ex3:game/end/judge
