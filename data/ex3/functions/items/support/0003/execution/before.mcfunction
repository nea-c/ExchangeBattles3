summon marker 0 0 0 {Tags:["support3-count","this"]}
scoreboard players operation @e[tag=this,limit=1] number = @s number
tag @e[tag=this,limit=1] remove this