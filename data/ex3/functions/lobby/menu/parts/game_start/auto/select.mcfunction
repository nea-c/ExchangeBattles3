playsound minecraft:entity.player.levelup master @a ~ ~ ~
particle minecraft:end_rod ~ ~ ~0.3 0 0 0 0.05 20 force
scoreboard players set #menu_close value 1
scoreboard players set #game_start_checker2 value 1
function ex3:game/start/check
