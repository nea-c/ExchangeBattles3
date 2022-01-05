#イーミット-オブジェクト攻撃時処理
#advancement revoke @s only advancements:emit_hurt
execute if entity @s[team=emerald,scores={max_health=0..}] unless entity @a[tag=emit,limit=1] run tag @s add emit_can_get
execute if entity @s[team=purpur,scores={max_health=0..}] unless entity @a[tag=emit,limit=1] run tag @s add emit_can_get
execute if entity @s[tag=emit_can_get] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 100000 1.5
execute if entity @s[tag=emit_can_get] run tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"selector":"@s"},{"text":"が目標を取得した"}]
execute if entity @s[tag=emit_can_get] run scoreboard players operation #compare number = @s number
execute if entity @s[tag=emit_can_get] run tag @s add emit
execute as @e[tag=emit_object] at @s run tp @s ~ ~-512 ~
execute as @e[tag=emit_object] run tag @s add emit_object_remove
execute if entity @s[tag=emit_can_get] run tag @s remove emit_can_get