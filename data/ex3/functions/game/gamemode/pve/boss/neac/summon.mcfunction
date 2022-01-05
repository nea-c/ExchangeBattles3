#boss召喚
kill @e[tag=boss]
summon skeleton ~ ~ ~ {Tags:["boss","neac-b","first"],Team:"ffa",CustomName:'{"text":"NeAc","bold":true,"color":"green"}',CustomNameVisible:1b,PersistenceRequired:1b,Silent:1b,Glowing:1b,DeathLootTable:"empty",HandItems:[{},{}],ArmorItems:[{},{},{id:"minecraft:iron_chestplate",Count:1b,tag:{Enchantments:[{}],AttributeModifiers:[{}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"NeAc"}}],HandDropChances:[0f,0f],ArmorDropChances:[-100f,-100f,-100f,-100f]}

bossbar add ex3:boss {"text":"創造主 NeAc","color":"green","bold":true}
bossbar set ex3:boss color green
bossbar set ex3:boss visible true
bossbar set ex3:boss players @a

execute if score #difficulty value matches 1 run scoreboard players set @e[tag=first] max_health 8000
execute if score #difficulty value matches 2 run scoreboard players set @e[tag=first] max_health 10000
execute if score #difficulty value matches 3 run scoreboard players set @e[tag=first] max_health 12000
execute if score #difficulty value matches 4 run scoreboard players set @e[tag=first] max_health 14000
execute as @e[tag=first] run scoreboard players operation @s health = @s max_health
execute store result bossbar ex3:boss max run scoreboard players get @e[tag=first,limit=1] max_health
execute store result bossbar ex3:boss value run scoreboard players get @e[tag=first,limit=1] health

scoreboard players set @e[tag=first,limit=1] number -1

execute if entity @e[tag=neac-b,tag=first] run loot replace entity @e[tag=neac-b,tag=first] weapon.mainhand loot ex3:items/weapon/0001
#playsound minecraft:entity.wither.spawn master @a 0 -100 0 0 0.8 1
#summon minecraft:lightning_bolt 0 10 0
#summon minecraft:lightning_bolt 0 10 0
effect give @e[tag=boss] minecraft:luck 1 9 true
#tellraw @a [{"text":"--------------------------------\n","italic":false,"color":"gray"}]
#tellraw @a [{"text":"[BOSSBATTLE]\n","color":"aqua","bold":true}]
#tellraw @a [{"text":" "},{"text":" "},{"text":"VS 創造主 NeAc","color":"yellow","bold":true}]
execute if score #difficulty value matches 1 run tellraw @a [{"text":" "},{"text":" "},{"text":"Difficulty: Easy","color":"green"}]
execute if score #difficulty value matches 2 run tellraw @a [{"text":" "},{"text":" "},{"text":"Difficulty: Normal","color":"aqua"}]
execute if score #difficulty value matches 3 run tellraw @a [{"text":" "},{"text":" "},{"text":"Difficulty: Hard","color":"red"}]
execute if score #difficulty value matches 4 run tellraw @a [{"text":" "},{"text":" "},{"text":"Difficulty: Lunatic","color":"#ee0000"}]
#tellraw @a {"text":"--------------------------------","italic":false,"color":"gray"}
#execute if score #difficult value matches 4 run function wancomatter:boss/detonator/lunatic

#execute if entity @e[tag=neac-b,tag=first] run team join enemy @e[tag=neac-b,tag=first]
tag @e[tag=neac-b,tag=first] remove first