#ダメージ軽減値取得処理

scoreboard players set #resist value 100
scoreboard players set #resistance value 0
execute if entity @s[nbt={ActiveEffects:[{Id:26b}]}] store result score #resistance value2 run data get entity @s ActiveEffects[{Id:26b}].Amplifier
execute if score #resistance value2 matches 0.. run scoreboard players add #resistance value2 1
execute if score #resistance value2 matches 1.. run scoreboard players operation #resistance value2 *= #10 value
execute if score #resistance value2 matches 1.. run scoreboard players operation #resistance value = #resistance value2

execute if entity @s[tag=skill6-resist] run scoreboard players set #resistance_compare value 80
execute if score #resistance_compare value > #resistance value run scoreboard players operation #resistance value = #resistance_compare value
execute if entity @s[tag=skill6-resist] run tag @s remove skill6-resist

execute if entity @s[tag=king] run scoreboard players set #resistance_compare value 40
execute if score #resistance_compare value > #resistance value run scoreboard players operation #resistance value = #resistance_compare value

#アンユースレジット
execute if entity @s[scores={support=7,skill1_ct=0,skill2_ct=0,skill3_ct=0,support_pos=-106}] run scoreboard players set #resistance_compare value 30
execute if score #resistance_compare value > #resistance value run scoreboard players operation #resistance value = #resistance_compare value

execute if entity @s[tag=start_resistance] run scoreboard players set #resistance_compare value 100
execute if score #resistance_compare value > #resistance value run scoreboard players operation #resistance value = #resistance_compare value
execute if entity @s[tag=start_resistance] run tag @s remove start_resistance

execute if entity @s[tag=skill2-melt_now] run scoreboard players reset #resistance
execute if entity @s[tag=into_void] run scoreboard players reset #resistance

execute if score #resistance value matches 100.. run scoreboard players set #resistance value 100
#剥ぎ鋏
execute at @s if entity @a[tag=!hurt,tag=hurt_by,distance=..7,advancements={ex3:general/attack/melee_dealt=true},scores={weapon=7},nbt={SelectedItem:{tag:{CustomModelData:10007}}},limit=1] run tag @s add weapon7-1
execute if entity @s[tag=weapon7-1] run scoreboard players set #boost value 6
execute if entity @s[tag=weapon7-1] run scoreboard players operation #resistance value *= #boost value
execute if entity @s[tag=weapon7-1] run scoreboard players operation #resistance value /= #10 value
execute if entity @s[tag=weapon7-1] run tag @s remove weapon7-1

execute if score #resistance value matches 1.. run scoreboard players operation #resist value -= #resistance value
