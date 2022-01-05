#ダメージ受けた処理

execute if entity @s[gamemode=!adventure,gamemode=!survival] run scoreboard players set @s damage_resist 0

execute if entity @s[scores={hurt_by=1..}] run tag @s add hurt
execute if entity @s[scores={hurt_by=1..}] as @a if score @s number = @e[tag=hurt,limit=1] hurt_by run tag @s add hurt_by

execute if score @s damage_source matches 1.. run scoreboard players operation #damage_source value = @s damage_source
execute if entity @a[tag=hurt_by,limit=1] as @a[tag=hurt_by] run function ex3:general/health_proc/damage/get_source
scoreboard players reset #damage_source

execute if entity @a[tag=hurt_by,limit=1] run scoreboard players set @s keep_hurt_by 1
execute if entity @a[tag=hurt_by,limit=1] run scoreboard players operation @s last_hurt_by = @a[tag=hurt_by] number
execute if score @s hurt_by matches ..-1 run scoreboard players operation @s last_hurt_by = @s hurt_by
execute if score @s hurt_by matches ..-1 run scoreboard players set @s keep_hurt_by 1

execute if entity @a[tag=!hurt_player,advancements={ex3:general/attack/melee_dealt=true,ex3:general/attack/trans=true},limit=1] run tag @a[advancements={ex3:general/attack/melee_dealt=true,ex3:general/attack/trans=true},limit=1] add melee_dealt

execute at @s if entity @a[tag=!hurt,tag=hurt_by,distance=..7,advancements={ex3:general/attack/melee_dealt=true},limit=1] run tag @s add melee_taken

function ex3:general/health_proc/damage/boost_by_enemy


execute if entity @s[tag=shield-guard] if score @s hurt_time_shield matches 1.. run scoreboard players operation @s damage_resist -= @s hurt_time_shield
execute if entity @s[tag=shield-guard] run scoreboard players operation @s hurt_time_shield += @s damage_resist
execute if entity @s[tag=shield-guard] if score @s damage_resist matches 1.. run scoreboard players set @s keep_hurt_shield 4
execute if entity @s[tag=shield-guard] run scoreboard players operation @s damage_shield = @s damage_resist
execute if entity @s[tag=shield-guard] run scoreboard players set @s damage_resist 0
execute if entity @s[tag=shield-guard,tag=magic] run tag @s remove magic

#クライオデバフ
execute at @s as @a[tag=!hurt,tag=hurt_by,distance=..7,advancements={ex3:general/attack/melee_dealt=true},scores={support=13},sort=nearest,limit=1] unless score @s weapon matches 4..5 run tag @e[tag=hurt,tag=!support13-1,limit=1] add support13-1
execute if entity @s[tag=support13-1] run effect give @s slowness 1 0
execute if entity @s[tag=support13-1] run tag @s remove support13-1

#===自分======================================================================

#ダッシュトリガーチェンジ
execute if entity @s[scores={support=9}] run tag @s add support9-1
execute if entity @s[tag=support9-1] run scoreboard players set #boost value 125
execute if entity @s[tag=support9-1] run scoreboard players operation @s damage_resist *= #boost value
execute if entity @s[tag=support9-1] run scoreboard players operation @s damage_resist /= #100 value
execute if entity @s[tag=support9-1] run tag @s remove support9-1

#骨砕き
execute if entity @s[scores={support=10}] run tag @s add support10-2
execute if entity @s[tag=support10-2] run scoreboard players set #boost value 12
execute if entity @s[tag=support10-2] run scoreboard players operation @s damage_resist *= #boost value
execute if entity @s[tag=support10-2] run scoreboard players operation @s damage_resist /= #10 value
execute if entity @s[tag=support10-2] run tag @s remove support10-2


#カウンタースパーク
execute if entity @s[tag=skill12-now,tag=!into_void,scores={damage_resist=1..}] at @s run function ex3:items/skill/0012/counter

#固定砲台
execute if entity @s[tag=skill35-now,tag=!into_void,scores={damage_resist=1..}] at @s run function ex3:items/skill/0035/use_end

#攻撃してきたほうのアタックスキル発動
#execute if entity @a[tag=melee_dealt,scores={team_number=1..,max_health=0..},limit=1] as @a[tag=melee_dealt,scores={team_number=1..,max_health=0..}] at @s run function ex3:items/skill/use/melee


execute if entity @s[tag=magic] store result score #hurt_time value run data get entity @s HurtTime 1
#execute if entity @s[tag=magic] run tellraw @s ["",{"score":{"name":"#hurt_time","objective":"value"}}]
execute if entity @s[tag=magic,tag=!knockback-disabled] if entity @a[tag=hurt_by,tag=!hurt,limit=1] run tag @s add flag
execute if entity @s[tag=magic,tag=!undead,tag=!flag] if score #hurt_time value matches 0..1 run effect give @s minecraft:instant_damage 1 0 true
execute if entity @s[tag=magic,tag=undead,tag=!flag] if score #hurt_time value matches 0..1 run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[tag=flag,tag=!undead] if score #hurt_time value matches 0..1 at @s run summon area_effect_cloud ~ ~ ~ {Duration:5,Age:4,WaitTime:1,Radius:0.5f,Particle:"minecraft:dust 0 0 0 0",Effects:[{Id:7b,Amplifier:1b,Duration:1}],Tags:["ini"]}
execute if entity @s[tag=flag,tag=undead] if score #hurt_time value matches 0..1 at @s run summon area_effect_cloud ~ ~ ~ {Duration:5,Age:4,WaitTime:1,Radius:0.5f,Particle:"minecraft:dust 0 0 0 0",Effects:[{Id:6b,Amplifier:1b,Duration:1}],Tags:["ini"]}
execute if entity @s[tag=flag] run data modify entity @e[tag=ini,limit=1] Owner set from entity @a[tag=hurt_by,limit=1] UUID
execute if entity @s[tag=flag] run tag @e[tag=ini] remove ini
execute if entity @s[tag=flag] run tag @s remove flag


execute if entity @s[type=!player,tag=magic] if score #hurt_time value matches 0..1 run tag @s add magic_protect
execute if entity @s[type=player,tag=magic,gamemode=!creative,gamemode=!spectator] if score #hurt_time value matches 0..1 run tag @s add magic_protect
execute if entity @s[tag=magic] run tag @s remove magic

scoreboard players reset #hurt_time value

execute if score @s hurt_time_resist matches 1.. run scoreboard players operation @s damage_resist -= @s hurt_time_resist

execute if score @s damage_resist matches -2147483648..-1 run scoreboard players reset @s damage_resist

scoreboard players operation @s hurt_time_resist += @s damage_resist

function ex3:general/health_proc/damage/get_resist

scoreboard players operation @s damage_resist *= #resist value
scoreboard players operation @s damage_resist /= #100 value
scoreboard players reset #resist
scoreboard players reset #resistance
scoreboard players reset #resistance_compare
scoreboard players reset #boost

#トータルダメとか
execute if score #playing value matches 3 if entity @s[type=player] unless score @s[tag=hurt] team_number = @a[tag=!hurt,tag=hurt_by,limit=1] team_number run scoreboard players operation @a[tag=!hurt,tag=hurt_by,limit=1] total_dealt += @s damage_resist
execute if entity @s[tag=into_void] run tag @s add HDCTT-specific-tag
execute if score #playing value matches 3 if entity @s[tag=!HDCTT-specific-tag,advancements={ex3:general/attack/taken_by_fall=false}] unless score @s[tag=hurt] team_number = @a[tag=!hurt,tag=hurt_by,limit=1] team_number run scoreboard players operation @s total_taken += @s damage_resist
execute if entity @s[tag=HDCTT-specific-tag] run tag @s remove HDCTT-specific-tag

#サンドバッグの処理
execute if score #playing value matches 0 if entity @s[tag=sandbag,scores={damage_resist=1..}] if entity @a[tag=hurt_by,limit=1] run function ex3:general/health_proc/damage/sandbag


execute if entity @s[tag=boss] at @s run function ex3:game/gamemode/pve/boss/hate
execute if entity @s[tag=boss_hitbox] at @s run function ex3:game/gamemode/pve/boss/hate_hitbox


scoreboard players operation #health value = @s health
scoreboard players operation @s health -= @s damage_resist

#ダメージ表示
execute if entity @s[scores={damage_resist=1..}] at @s run function ex3:general/health_proc/damage/indicator/summon



execute if entity @s[scores={hurt_by=0..}] run scoreboard players reset @s hurt_by
execute if entity @s[scores={damage_resist=0..}] run scoreboard players reset @s damage_resist

#tag削除
execute if entity @s[tag=hurt] run tag @s remove hurt
execute if entity @a[tag=hurt_by,limit=1] as @a[tag=hurt_by] run tag @s remove hurt_by
execute if entity @a[tag=melee_dealt,limit=1] as @a[tag=melee_dealt] run tag @s remove melee_dealt
execute if entity @s[tag=melee_taken] run tag @s remove melee_taken
execute if entity @s[tag=knockback-disabled] run tag @s remove knockback-disabled
