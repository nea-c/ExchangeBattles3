#リスポーン処理

tp @s @s
gamemode adventure @s
title @s times 0 20 40
title @s title ["",{"text":"","color":"white"}]
title @s subtitle ["",{"text":"respawn","color":"white"}]
function ex3:general/health_proc/max-set
function ex3:general/health_proc/full-recovery
effect give @s minecraft:instant_health 1 4 true
effect give @s minecraft:luck 5 9
effect clear @s blindness
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
