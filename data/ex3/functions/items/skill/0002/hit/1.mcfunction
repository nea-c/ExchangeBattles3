
summon marker ~ ~ ~ {Tags:["this","skill2-meltshock"],data:{target:[I;0,0,0,0],tmpUUID:[I;0,0,0,0]}}
data modify entity @e[tag=this,limit=1] data.target set from entity @s UUID
scoreboard players set @e[tag=this] value 60
tag @e[tag=this] remove this

tag @s add magic
scoreboard players operation @s hurt_by = #- number
scoreboard players set @s damage_source 30002
scoreboard players set @s damage_resist 42

function ex3:general/health_proc/damage/calc

tag @s add skill2-anchor
