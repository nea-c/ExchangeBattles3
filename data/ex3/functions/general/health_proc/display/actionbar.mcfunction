
scoreboard players operation #health_int value = @s health
scoreboard players operation #health_int value /= #10 value
scoreboard players operation #health_frac value = @s health
scoreboard players operation #health_frac value %= #10 value

execute if score #health_int value matches ..-1 run scoreboard players set #health_int value 0

title @s actionbar ["",{"text":"HP:","color":"#ee0000","bold":true,"underlined":true},{"text":""},{"score":{"name":"#health_int","objective":"value"},"color":"#ee0000","bold":true,"underlined":true},{"text":".","color":"#ee0000","bold":true,"underlined":true},{"score":{"name":"#health_frac","objective":"value"},"color":"#ee0000","bold":true,"underlined":true},{"text":"/","color":"#ee0000","bold":true,"underlined":true},{"score":{"name":"@s","objective":"max_health"},"color":"#ee0000","bold":true,"underlined":true},{"text":"                         "}]

execute if score #health_frac value matches 5.. run scoreboard players add #health_int value 1
scoreboard players operation @s health_display = #health_int value

scoreboard players reset #health_int
scoreboard players reset #health_frac
