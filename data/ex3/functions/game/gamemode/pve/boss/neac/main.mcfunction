scoreboard players add @s value 1
execute store result bossbar ex3:boss value run scoreboard players get @s health

execute if entity @s[scores={skill1_ct=1..}] if score @s health matches ..4000 run scoreboard players set @s skill1_ct 0
execute if entity @s[scores={Cooldown5=1..}] if score @s health matches ..4000 run scoreboard players remove @s Cooldown5 1
execute if entity @s[scores={skill1_ct=1..}] run scoreboard players remove @s skill1_ct 1
execute if entity @s[scores={skill2_ct=1..}] run scoreboard players remove @s skill2_ct 1
execute if entity @s[scores={skill3_ct=1..}] run scoreboard players remove @s skill3_ct 1

execute if entity @s[tag=into_void] run function ex3:game/gamemode/pve/boss/void-comeback/0

execute if entity @s[y=7,dy=-30] run function ex3:game/gamemode/pve/boss/neac/return
execute unless score @s Cooldown9 matches 1.. if score @s health matches ..8000 if entity @a[distance=12.5..64,tag=damagetaken,limit=1] run tag @a[distance=12.5..64,tag=damagetaken,limit=1,sort=nearest] add b1s9target
execute if score #difficult value matches 3..4 unless score @s Cooldown8 matches 1.. if score @s health matches ..8000 unless entity @a[tag=b1s9target] if entity @a[distance=12.5..64,tag=damagetaken,limit=1] run tag @a[distance=12.5..64,tag=damagetaken,limit=1,sort=nearest] add b1s9target2
execute unless score @s Cooldown9 matches 1.. if score @s health matches ..8000 if entity @a[tag=b1s9target] run function ex3:game/gamemode/pve/boss/neac/skill9/discharge
execute if score #difficult value matches 3..4 unless score @s Cooldown8 matches 1.. if score @s health matches ..8000 if entity @a[tag=b1s9target2] run function ex3:game/gamemode/pve/boss/neac/skill9/discharge2
execute if score #difficult value matches 3..4 unless score @s skill3_ct matches 1.. if entity @a[distance=..8,gamemode=!spectator] run function ex3:game/gamemode/pve/boss/neac/skill3/discharge
execute if score #difficult value matches 3..4 if score @s health matches ..8000 unless score @s skill2_ct matches 1.. unless entity @a[distance=..16,gamemode=!spectator] run function ex3:game/gamemode/pve/boss/neac/skill2/discharge
execute unless score #difficult value matches 3..4 if score @s health matches ..8000 unless score @s skill2_ct matches 1.. unless entity @a[distance=..25,gamemode=!spectator] run function ex3:game/gamemode/pve/boss/neac/skill2/discharge
execute if entity @s[tag=usedskill] run tag @s remove usedskill

execute if score @s value matches 100.. run function ex3:game/gamemode/pve/boss/neac/useskill
execute if score @s value matches 100.. unless score @s health matches ..8000 run scoreboard players set @s value -10
execute if score @s value matches 100.. run scoreboard players set @s value 0

execute if score #difficult value matches 3..4 if score @s health matches ..4000 if score @s subvalue matches 4 if score @s value matches 99 run function ex3:game/gamemode/pve/boss/neac/skill23/discharge

execute if entity @s[scores={Cooldown7_max=1..}] run summon lightning_bolt ~ ~ ~
execute if entity @s[scores={Cooldown7_max=1..}] run scoreboard players remove @s Cooldown7_max 1
execute if entity @s[scores={skill1_ct_max=22}] run effect give @s luck 1 9 true
execute if entity @s[scores={skill1_ct_max=1..}] unless data entity @s {Fire:-1s} run data merge entity @s {Fire:-1s}
execute if entity @s[scores={skill1_ct_max=1..}] run scoreboard players remove @s skill1_ct_max 1
tag @a[tag=b1s9targeted] remove b1s9targeted
execute if score @s health matches ..0 run function ex3:game/gamemode/pve/boss/neac/defeat

execute unless entity @s[tag=b1s21used] if score @s health matches ..8000 run function ex3:game/gamemode/pve/boss/neac/skill21/discharge
execute unless entity @s[tag=b1s22used] if score @s health matches ..4000 run function ex3:game/gamemode/pve/boss/neac/skill22/discharge