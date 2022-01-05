

scoreboard players remove @s skill1_ct 20
scoreboard players remove @s skill2_ct 20
scoreboard players remove @s skill3_ct 20
execute if entity @s[scores={skill1_ct=..-1}] run scoreboard players set @s skill1_ct 0
execute if entity @s[scores={skill2_ct=..-1}] run scoreboard players set @s skill2_ct 0
execute if entity @s[scores={skill3_ct=..-1}] run scoreboard players set @s skill3_ct 0
kill @e[tag=this]
execute unless entity @e[tag=support3-count,limit=1] run function ex3:items/skill/setup

tag @s remove support3-owner