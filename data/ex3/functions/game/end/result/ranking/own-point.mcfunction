scoreboard players operation #result total_dealt = @s total_dealt
scoreboard players operation #result- total_dealt = @s total_dealt
scoreboard players operation #result total_dealt /= #10 value
scoreboard players operation #result- total_dealt %= #10 value
scoreboard players operation #result total_taken = @s total_taken
scoreboard players operation #result- total_taken = @s total_taken
scoreboard players operation #result total_taken /= #10 value
scoreboard players operation #result- total_taken %= #10 value
tellraw @s ["",{"text":"-- ","color":"gray"},{"selector":"@s"},{"text":"  キル: "},{"score":{"name":"@s","objective":"total_kill"}},{"text":" デス: "},{"score":{"name":"@s","objective":"total_death"}},{"text":" 与ダメ: "},{"score":{"name":"#result","objective":"total_dealt"}},{"text":"."},{"score":{"name":"#result-","objective":"total_dealt"}},{"text":" 被ダメ: "},{"score":{"name":"#result","objective":"total_taken"}},{"text":"."},{"score":{"name":"#result-","objective":"total_taken"}}]
scoreboard players reset @s total_point
scoreboard players reset #result-