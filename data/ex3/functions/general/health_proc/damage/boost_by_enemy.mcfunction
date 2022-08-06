#敵からのダメージ上昇処理

#骨砕き
execute at @s if entity @a[tag=hurt_by,scores={support=10},sort=nearest,limit=1] run tag @s add support10-1
execute if entity @s[tag=support10-1] run scoreboard players set #boost value 12
execute if entity @s[tag=support10-1] run scoreboard players operation @s damage_resist *= #boost value
execute if entity @s[tag=support10-1] run scoreboard players operation @s damage_resist /= #10 value
execute if entity @s[tag=support10-1] run tag @s remove support10-1

#ギャンブラー
execute at @s if entity @a[tag=!hurt,tag=hurt_by,distance=..7,advancements={ex3:general/attack/dealt/melee/=true},scores={support=11},sort=nearest,limit=1] run tag @s add support11-1
execute if entity @s[tag=support11-1] store result score #boost value2 run function ex3:items/support/0011/execution
#execute if entity @s[tag=support11-1] run tellraw @a[tag=hurt_by] {"score":{"name": "#boost","objective": "value2"}}
execute if entity @s[tag=support11-1] run scoreboard players set #boost value 100
execute if entity @s[tag=support11-1] run scoreboard players operation #boost value += #boost value2
execute if entity @s[tag=support11-1] run scoreboard players operation @s damage_resist *= #boost value
execute if entity @s[tag=support11-1] run scoreboard players operation @s damage_resist /= #100 value
execute if entity @s[tag=support11-1] run tag @s remove support11-1



#フォースガーナー
execute at @s if entity @a[tag=!hurt,tag=hurt_by,distance=..7,advancements={ex3:general/attack/dealt/melee/=true},tag=skill4-now,limit=1] run scoreboard players set #boost value 2
execute at @s if entity @a[tag=!hurt,tag=hurt_by,distance=..7,advancements={ex3:general/attack/dealt/melee/=true},tag=skill4-now,limit=1] run scoreboard players operation @s damage_resist *= #boost value




#剥ぎ鋏
#execute at @s if entity @a[tag=!hurt,tag=hurt_by,distance=..7,advancements={ex3:general/attack/dealt/melee/=true},scores={weapon=7},nbt={SelectedItem:{tag:{CustomModelData:10007}}},limit=1] run tag @s add weapon7-1

