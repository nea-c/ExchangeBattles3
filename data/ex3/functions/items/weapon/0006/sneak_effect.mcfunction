#メイン6

scoreboard players set @e[tag=now-weapon6-count] value 40

execute if score @s skill1_ct matches 40.. run scoreboard players add #weapon6_P value2 40
execute if score @s skill2_ct matches 40.. run scoreboard players add #weapon6_P value2 40
execute if score @s skill3_ct matches 40.. run scoreboard players add #weapon6_P value2 40
execute unless score @s skill1_ct matches 40.. run scoreboard players operation #weapon6_P value2 += @s skill1_ct
execute unless score @s skill2_ct matches 40.. run scoreboard players operation #weapon6_P value2 += @s skill2_ct
execute unless score @s skill3_ct matches 40.. run scoreboard players operation #weapon6_P value2 += @s skill3_ct

execute if score #weapon6_P value2 matches 1.. run scoreboard players operation #weapon6_P value2 /= #10 value

execute if score @s skill1_ct matches ..40 run scoreboard players set @s skill1_ct 0
execute if score @s skill2_ct matches ..40 run scoreboard players set @s skill2_ct 0
execute if score @s skill3_ct matches ..40 run scoreboard players set @s skill3_ct 0
execute unless score @s skill1_ct matches ..40 run scoreboard players remove @s skill1_ct 40
execute unless score @s skill2_ct matches ..40 run scoreboard players remove @s skill2_ct 40
execute unless score @s skill3_ct matches ..40 run scoreboard players remove @s skill3_ct 40


execute if score #weapon6_P value2 matches 1.. run scoreboard players operation #weapon6_P value += #weapon6_P value2

execute if score #weapon6_P value matches 1.. run tag @s add magic
execute if score #weapon6_P value matches 1.. run scoreboard players operation @s hurt_by = @s number
execute if score #weapon6_P value matches 1.. run scoreboard players operation @s damage_resist += #weapon6_P value
execute if score #weapon6_P value matches 1.. run scoreboard players set @s damage_source 10006
execute if score #weapon6_P value matches 1.. run function ex3:general/health_proc/damage/calc

scoreboard players reset #weapon6_P

function ex3:items/skill/setup