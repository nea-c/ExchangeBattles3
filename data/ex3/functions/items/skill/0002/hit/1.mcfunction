
summon marker ~ ~ ~ {Tags:["this","skill2-meltshock"],data:{target:[I;0,0,0,0],tmpUUID:[I;0,0,0,0]}}
data modify entity @e[tag=this,limit=1] data.target set from entity @s UUID
scoreboard players set @e[tag=this] value 60
tag @e[tag=this] remove this


scoreboard players set #- damage_resist 42

execute unless score @s damage_resist >= #- damage_resist run tag @s add magic
execute unless score @s damage_resist >= #- damage_resist run scoreboard players operation @s hurt_by = #- number
execute unless score @s damage_resist >= #- damage_resist run scoreboard players set @s damage_source 30002
execute unless score @s damage_resist >= #- damage_resist run scoreboard players operation @s damage_resist = #- damage_resist


tag @s add skill2-anchor
