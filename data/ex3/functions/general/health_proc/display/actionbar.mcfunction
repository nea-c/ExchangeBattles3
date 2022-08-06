
scoreboard players operation #health_int value = @s health
scoreboard players operation #health_int value /= #10 value
scoreboard players operation #health_frac value = @s health
scoreboard players operation #health_frac value %= #10 value

execute if score #health_int value matches ..-1 run scoreboard players set #health_int value 0


data modify storage tmp: text set value '{"translate":"HP:%s/%s","with":[{"translate":"%s.%s","with":[{"score":{"name":"#health_int","objective":"value"}},{"score":{"name":"#health_frac","objective":"value"}}]},{"score":{"name":"@s","objective":"max_health"}}]}'

title @s actionbar {"translate":"%s                         ","with":[{"nbt":"text","storage": "tmp:","interpret": true,"separator": "","color":"#ff1313","bold":true,"underlined":true}]}

data remove storage tmp: text

execute if score #health_frac value matches 5.. run scoreboard players add #health_int value 1
scoreboard players operation @s health_display = #health_int value

scoreboard players reset #health_int
scoreboard players reset #health_frac
