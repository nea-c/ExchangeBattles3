#スニーク長押しの進捗用
scoreboard players operation #- number = @s number
execute as @e[tag=achievements-sneak-count] if score @s number = #- number run tag @s add now-achievements-sneak-count
#unless entity @e[tag=now-achievements-sneak-count]
execute unless entity @e[tag=now-achievements-sneak-count,limit=1] at @s run summon marker 0 0 0 {Tags:["achievements-sneak-count","this","achievements-sneak-counted"]}
execute unless entity @e[tag=now-achievements-sneak-count,limit=1] run scoreboard players operation @e[tag=this,limit=1] number = @s number
execute unless entity @e[tag=now-achievements-sneak-count,limit=1] run tag @e[tag=this] remove this

execute as @e[tag=achievements-sneak-count] if score @s number = #- number run tag @s add now-achievements-sneak-count
#if entity @e[tag=now-achievements-sneak-count]
execute if entity @e[tag=now-achievements-sneak-count,limit=1] run scoreboard players add @e[tag=now-achievements-sneak-count] value 1
execute if entity @e[tag=now-achievements-sneak-count,limit=1,scores={value=12000..}] if entity @s[advancements={ex3:achievements/leisure=false}] run advancement grant @s only ex3:achievements/leisure
execute if entity @e[tag=now-achievements-sneak-count,limit=1,scores={value=12000..}] if entity @s[advancements={ex3:achievements/futility=false}] run advancement grant @s only ex3:achievements/futility
execute if entity @e[tag=now-achievements-sneak-count,limit=1] run tag @e[tag=now-achievements-sneak-count] add achievements-sneak-counted
execute if entity @e[tag=now-achievements-sneak-count,limit=1] run tag @e[tag=now-achievements-sneak-count] remove now-achievements-sneak-count

scoreboard players reset #-