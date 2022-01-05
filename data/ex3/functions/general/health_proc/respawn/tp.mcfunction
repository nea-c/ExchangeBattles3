#リスポーン処理
summon area_effect_cloud ~ ~ ~ {Tags:["this"],Duration:10}
execute store result entity @e[tag=this,limit=1] Pos[0] double 0.1 run scoreboard players get @s respawn-x
execute store result entity @e[tag=this,limit=1] Pos[1] double 0.1 run scoreboard players get @s respawn-y
execute store result entity @e[tag=this,limit=1] Pos[2] double 0.1 run scoreboard players get @s respawn-z
execute positioned as @e[tag=this,limit=1] run tp @s ~ ~ ~
kill @e[tag=this]
