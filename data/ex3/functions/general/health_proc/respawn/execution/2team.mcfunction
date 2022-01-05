summon marker 0 0 0 {Tags:["respawn-time","this"]}
scoreboard players operation @e[tag=this] number = @s number
scoreboard players operation @e[tag=this] respawn-y = @s respawn-y

scoreboard players set @e[tag=this] value 100
execute if score #emerald value < #purpur value run scoreboard players set @e[tag=this,limit=1] team_number 1
execute if score #emerald value > #purpur value run scoreboard players set @e[tag=this,limit=1] team_number 2
execute if score @e[tag=this,limit=1] team_number matches 1 run scoreboard players operation @e[tag=this,limit=1] value2 = #emerald value
execute if score @e[tag=this,limit=1] team_number matches 2 run scoreboard players operation @e[tag=this,limit=1] value2 = #purpur value
execute if score @e[tag=this,limit=1] team_number matches 1..2 run scoreboard players operation @e[tag=this,limit=1] value2 *= #100 value
execute if score @e[tag=this,limit=1] team_number matches 1 run scoreboard players operation @e[tag=this,limit=1] value2 /= #purpur value
execute if score @e[tag=this,limit=1] team_number matches 2 run scoreboard players operation @e[tag=this,limit=1] value2 /= #emerald value
scoreboard players set @e[tag=this,limit=1] tab 100
scoreboard players operation @e[tag=this,limit=1] tab -= @e[tag=this,limit=1] value2
execute if score @e[tag=this,limit=1] tab matches 61.. run scoreboard players set @e[tag=this,limit=1] tab 60
execute if score @s team_number = @e[tag=this,limit=1] team_number run scoreboard players operation @e[tag=this,limit=1] value -= @e[tag=this,limit=1] tab

tag @e[tag=this] remove this
