#スキル10
tag @a[tag=hit,gamemode=!adventure,gamemode=!survival] remove hit
#scoreboard players add @e[tag=hit] damage_resist 10

scoreboard players operation @e[tag=hit] hurt_by = @s number
scoreboard players set @e[tag=hit] damage_source 30010

tag @e[tag=hit] remove hit