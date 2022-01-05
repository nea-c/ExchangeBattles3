

execute if entity @a[advancements={ex3:root=true,ex3:achievements/welcome=false},limit=1] as @a[advancements={ex3:root=true,ex3:achievements/welcome=false}] run advancement grant @s only ex3:achievements/welcome
execute if entity @a[advancements={ex3:root=false},limit=1] as @a[advancements={ex3:root=false}] run function ex3:general/loginsetup

execute if entity @e[tag=magic_protect,limit=1] as @e[tag=magic_protect] run scoreboard players remove @s damage_resist 60
execute if entity @e[tag=magic_protect,limit=1] as @e[tag=magic_protect] run tag @s remove magic_protect

function ex3:game/repeat

execute if entity @e[type=lightning_bolt,tag=!lightning_bolt,limit=1] as @e[type=lightning_bolt,tag=!lightning_bolt] run function ex3:general/lightning_bolt

#えんちちの体力をスコア化するための体力NBTをセットする処理
execute if entity @e[type=!#ex3:not_mobs,tag=!fixed,tag=!no_entity,tag=!setup_complete,limit=1] as @e[type=!#ex3:not_mobs,tag=!fixed,tag=!no_entity,tag=!setup_complete] run function ex3:general/entity/setup

#えんちちのダメージスコア化処理
execute if entity @e[type=!#ex3:not_mobs,scores={max_health=0..},nbt=!{Health:1000f},limit=1] as @e[type=!#ex3:not_mobs,scores={max_health=0..},nbt=!{Health:1000f}] run function ex3:general/health_proc/damage/mob_receive


#チーム毎にチームナンバーを割り振る
execute if entity @e[scores={max_health=0..},team=,limit=1] as @e[scores={max_health=0..},team=] if score @s team_number matches 1.. run scoreboard players reset @s team_number
execute if entity @e[scores={max_health=0..},team=wait,limit=1] as @e[scores={max_health=0..},team=wait] if score @s team_number matches 1.. run scoreboard players reset @s team_number
execute if entity @e[scores={max_health=0..},team=emerald,limit=1] as @e[scores={max_health=0..},team=emerald] unless score @s team_number matches 1 run scoreboard players set @s team_number 1
execute if entity @e[scores={max_health=0..},team=purpur,limit=1] as @e[scores={max_health=0..},team=purpur] unless score @s team_number matches 2 run scoreboard players set @s team_number 2

execute if entity @e[scores={max_health=0..},team=pve,limit=1] as @e[scores={max_health=0..},team=pve] unless score @s team_number matches 30 run scoreboard players set @s team_number 30

execute if entity @e[scores={max_health=0..},team=ffa,limit=1] as @e[scores={max_health=0..},team=ffa] unless score @s team_number = @s number run scoreboard players operation @s team_number = @s number


#盲目で行われる処理を無効化するためのタグを付与する処理
execute if entity @e[tag=not-blind-time,limit=1] as @e[tag=not-blind-time] run function ex3:general/effects/blindness/not

#体力表示・最大体力計算
execute if entity @a[scores={max_health=0..},limit=1] as @a[scores={max_health=0..}] run function ex3:general/health_proc/0
#盲目処理用アマスタの削除
execute if entity @e[tag=general-blindness,tag=!general-blindness-ed,limit=1] run kill @e[tag=general-blindness,tag=!general-blindness-ed]
execute if entity @e[tag=general-blindness,tag=general-blindness-ed,limit=1] run tag @e[tag=general-blindness-ed] remove general-blindness-ed

#体力が最大体力を超過していたらリセットする処理
execute if entity @a[tag=health_display_remove,limit=1] as @a[tag=health_display_remove] run function ex3:general/health_proc/display/remove
execute if entity @a[gamemode=!spectator,limit=1] as @a[gamemode=!spectator] run function ex3:general/health_proc/20heart_check


#スキル発動処理
execute if entity @a[scores={team_number=1..,max_health=0..},limit=1] as @a[scores={team_number=1..,max_health=0..}] at @s run function ex3:items/skill/use/check

#スキル処理
function ex3:items/skill/repeat

#弓、クロスボウ使用時処理
execute if entity @a[scores={use.bow=1..},limit=1] as @a[scores={use.bow=1..}] run function ex3:items/auxiliary/arrow/use/by_bow/check
execute if entity @a[advancements={ex3:general/use.crossbow=true},limit=1] as @a[advancements={ex3:general/use.crossbow=true}] run function ex3:items/auxiliary/arrow/use/by_crossbow/check

#鎌
execute if entity @a[scores={weapon=6},predicate=ex3:general/sneak,nbt={SelectedItem:{tag:{CustomModelData:10006}}},limit=1] as @a[scores={weapon=6},predicate=ex3:general/sneak,nbt={SelectedItem:{tag:{CustomModelData:10006}}}] run function ex3:items/weapon/0006/count
execute if entity @e[tag=weapon6-count,tag=!weapon6-counted,limit=1] run kill @e[tag=weapon6-count,tag=!weapon6-counted]
execute if entity @e[tag=weapon6-count,tag=weapon6-counted,limit=1] run tag @e[tag=weapon6-counted] remove weapon6-counted

#アンユースレジットパーティクル
execute if entity @a[scores={support=7,skill1_ct=0,skill2_ct=0,skill3_ct=0},tag=!skill2-melt_now,gamemode=!spectator,limit=1] as @a[scores={support=7,skill1_ct=0,skill2_ct=0,skill3_ct=0},tag=!skill2-melt_now,gamemode=!spectator] at @s run particle minecraft:item music_disc_13 ~ ~1 ~ 0.2 0.3 0.2 0 1 force @a

#ダッシュトリガーチェンジ
execute as @a run attribute @s generic.movement_speed modifier remove 0-0-0-2-0009
execute if entity @a[scores={support=9},gamemode=!spectator,limit=1] as @a[scores={support=9},gamemode=!spectator] run function ex3:items/support/0009/speed

#センサー
execute if entity @a[nbt={ActiveEffects:[{Id:16b}]},tag=support12-nv,limit=1] as @a[nbt={ActiveEffects:[{Id:16b}]},tag=support12-nv] unless entity @s[scores={support=12,max_health=0..},gamemode=!spectator] run effect clear @s night_vision
execute if entity @a[tag=support12-nv,limit=1] as @a[tag=support12-nv] run tag @s remove support12-nv
execute if entity @a[scores={support=12,max_health=0..},limit=1] as @a[scores={support=12,max_health=0..}] run effect give @s night_vision 15 0 true
execute if entity @a[scores={support=12,max_health=0..},limit=1] as @a[scores={support=12,max_health=0..}] run tag @s add support12-nv
execute if entity @a[scores={support=12},gamemode=!spectator,limit=1] as @a[scores={support=12},gamemode=!spectator] at @s run function ex3:items/support/0012/vision

#軽量化アイテムベルト
execute as @a run attribute @s generic.movement_speed modifier remove 0-0-0-2-0014
execute if entity @a[scores={support=14},limit=1] as @a[scores={support=14}] run function ex3:items/support/0014/effect




#矢の自己リロード実行
execute if entity @e[tag=arrow-reload-check,limit=1] as @e[tag=arrow-reload-check] run function ex3:items/auxiliary/arrow/reload/self/time_limit

#矢のリロード処理
execute if entity @e[tag=arrow-reload-time,limit=1] as @e[tag=arrow-reload-time] run function ex3:items/auxiliary/arrow/reload/counter

#矢にチーム毎のパーティクル発生
execute if entity @e[type=arrow,limit=1] as @e[type=arrow] at @s run function ex3:items/auxiliary/arrow/particle/main

#インベントリ変更
execute if entity @a[advancements={ex3:general/inventory_changed=true},limit=1] as @a[advancements={ex3:general/inventory_changed=true}] run function ex3:general/inventory_changed/execution

#攻撃力上昇と弱体化の割合化
execute if entity @e[scores={max_health=0..},limit=1] as @e[scores={max_health=0..}] run function ex3:general/effects/attack_damage/check

#盾へのダメージにいろいろ効果を乗せるために一旦damage_resistに受け渡し
execute if entity @a[tag=!shield-guard,scores={damage_shield=1..},limit=1] as @a[tag=!shield-guard,scores={damage_shield=1..}] run tag @s add shield-before
execute if entity @a[tag=shield-before,limit=1] as @a[tag=shield-before] run scoreboard players operation @s damage_resist += @s damage_shield
execute if entity @a[tag=shield-before,limit=1] as @a[tag=shield-before] run scoreboard players reset @s damage_shield
execute if entity @a[tag=shield-before,limit=1] as @a[tag=shield-before] run tag @s add shield-guard
execute if entity @a[tag=shield-before,limit=1] as @a[tag=shield-before] run tag @s add shield-guardB
execute if entity @a[tag=shield-before,limit=1] as @a[tag=shield-before] run tag @s remove shield-before

#ダメージ処理
execute if entity @e[scores={keep_hurt_shield=1..},limit=1] as @e[scores={keep_hurt_shield=1..}] run scoreboard players remove @s keep_hurt_shield 1
execute if entity @e[scores={keep_hurt_shield=0},limit=1] as @e[scores={keep_hurt_shield=0}] run scoreboard players reset @s hurt_time_shield
execute if entity @e[scores={keep_hurt_shield=0},limit=1] as @e[scores={keep_hurt_shield=0}] run scoreboard players reset @s keep_hurt_shield
execute if entity @e[scores={hurt_time_resist=1..},nbt={HurtTime:1s},limit=1] as @e[scores={hurt_time_resist=1..},nbt={HurtTime:1s}] run scoreboard players reset @s hurt_time_resist
execute if entity @e[scores={hurt_time_resist=1..},nbt={HurtTime:0s},limit=1] as @e[scores={hurt_time_resist=1..},nbt={HurtTime:0s}] run scoreboard players reset @s hurt_time_resist
execute if entity @e[scores={damage_resist=1..},limit=1] as @e[scores={damage_resist=1..}] run function ex3:general/health_proc/damage/calc

#盾いろいろ
execute if entity @a[tag=shield-guard,scores={damage_shield=1..},limit=1] as @a[tag=shield-guard,scores={damage_shield=1..}] run function ex3:general/shield/guard/accum
execute if entity @e[tag=support6-time,limit=1] as @e[tag=support6-time] run function ex3:items/support/0006/breaking

#死亡スキル発動
execute if entity @a[scores={team_number=1..,max_health=0..,health=..0},tag=!into_void,limit=1] as @a[scores={team_number=1..,max_health=0..,health=..0},tag=!into_void] at @s run function ex3:items/skill/use/death

#えんちち用死亡処理
execute if entity @e[type=!player,tag=!boss,scores={max_health=0..,health=..0},limit=1] as @e[type=!player,tag=!boss,scores={max_health=0..,health=..0}] at @s run function ex3:general/health_proc/death/mob
#プレイヤー用死亡処理
execute if entity @a[scores={health=..0}] as @a[scores={health=..0},limit=1] run function ex3:general/health_proc/death/main

#魔導書2のCT短縮処理
execute if entity @e[tag=support3-count,limit=1] as @e[tag=support3-count] run function ex3:items/support/0003/execution/after

#攻撃したプレイヤー一定時間保持処理
execute if entity @e[scores={keep_hurt_by=1..},limit=1] as @e[scores={keep_hurt_by=1..}] run scoreboard players add @s keep_hurt_by 1
execute if entity @e[tag=sandbag,scores={keep_hurt_by=100..},limit=1] as @e[tag=sandbag,scores={keep_hurt_by=100..}] run function ex3:general/health_proc/damage/sandbag-end
execute if entity @e[scores={keep_hurt_by=100..},limit=1] as @e[scores={keep_hurt_by=100..}] run scoreboard players reset @s damage_source
execute if entity @e[scores={keep_hurt_by=100..},limit=1] as @e[scores={keep_hurt_by=100..}] run scoreboard players reset @s last_hurt_by
execute if entity @e[scores={keep_hurt_by=100..},limit=1] as @e[scores={keep_hurt_by=100..}] run scoreboard players reset @s keep_hurt_by


#リスポーン
execute if entity @e[tag=respawn-time,limit=1] as @e[tag=respawn-time] run function ex3:general/health_proc/respawn/during


#アイテムドロップ時の処理
execute if entity @e[type=item,tag=!fixed,limit=1] as @e[type=item,tag=!fixed] run kill @s

execute if entity @a[scores={drop=1..},limit=1] as @a[scores={drop=1..}] run function ex3:general/drop


#呪縛のエリトラ解除
execute if entity @a[tag=elytra,tag=elytra_drop,limit=1] as @a[tag=elytra,tag=elytra_drop] run clear @s elytra{elytra:1b}
execute if entity @a[tag=elytra,tag=elytra_drop,limit=1] as @a[tag=elytra,tag=elytra_drop] run tag @s add drop
execute if entity @a[tag=elytra_drop,limit=1] as @a[tag=elytra_drop] run tag @s remove elytra_drop


execute if entity @a[scores={skill1_ct=1..},limit=1] as @a[scores={skill1_ct=1..}] run function ex3:items/skill/cooltime/slot1_remove
execute if entity @a[scores={skill2_ct=1..},limit=1] as @a[scores={skill2_ct=1..}] run function ex3:items/skill/cooltime/slot2_remove
execute if entity @a[scores={skill3_ct=1..},limit=1] as @a[scores={skill3_ct=1..}] run function ex3:items/skill/cooltime/slot3_remove


#地面に刺さった矢をkill
execute if entity @e[type=minecraft:arrow,nbt={inGround:1b},limit=1] as @e[type=minecraft:arrow,nbt={inGround:1b}] run kill @s
execute if entity @e[type=minecraft:spectral_arrow,nbt={inGround:1b},limit=1] as @e[type=minecraft:spectral_arrow,nbt={inGround:1b}] run kill @s

#モブから出現した経験値オーブをkill
execute if entity @e[type=minecraft:experience_orb,limit=1] as @e[type=minecraft:experience_orb] run kill @s



#経験値
execute as @a run function ex3:general/xp_bar/execution


execute if entity @e[tag=damage_indicator] as @e[tag=damage_indicator] run function ex3:general/health_proc/damage/indicator/motion



#スコアリセット
execute if entity @a[scores={drop=1..},limit=1] as @a[scores={drop=1..}] run scoreboard players reset @s drop
execute if entity @a[scores={use.bow=1..},limit=1] as @a[scores={use.bow=1..}] run scoreboard players reset @s use.bow


execute if entity @a[predicate=ex3:general/sneak,limit=1] as @a[predicate=ex3:general/sneak] run function ex3:achievements/sneak_time/count
execute if entity @e[tag=achievements-sneak-count,tag=!achievements-sneak-counted,limit=1] run kill @e[tag=achievements-sneak-count,tag=!achievements-sneak-counted]
execute if entity @e[tag=achievements-sneak-count,tag=achievements-sneak-counted,limit=1] run tag @e[tag=achievements-sneak-counted] remove achievements-sneak-counted


execute if entity @a[advancements={ex3:general/use.shield=true},limit=1] as @a[advancements={ex3:general/use.shield=true}] run function ex3:general/shield/count
execute if entity @e[tag=shield-count,tag=!shield-counted,limit=1] run kill @e[tag=shield-count,tag=!shield-counted]
execute if entity @e[tag=shield-count,tag=shield-counted,limit=1] run tag @e[tag=shield-counted] remove shield-counted


#execute if entity @a[scores={health=..0},limit=1] as @a[scores={health=..0}] run scoreboard players reset @s death
execute if entity @a[scores={jump=1..},limit=1] as @a[scores={jump=1..}] run scoreboard players reset @s jump
execute if entity @a[scores={fall=1..},limit=1] as @a[scores={fall=1..}] run scoreboard players reset @s fall
execute if entity @a[scores={use.snowball=1..},limit=1] as @a[scores={use.snowball=1..}] run scoreboard players reset @s use.snowball
execute if entity @a[scores={use.splash_potion=1..},limit=1] as @a[scores={use.splash_potion=1..}] run scoreboard players reset @s use.splash_potion
execute if entity @a[scores={use.lingering_potion=1..},limit=1] as @a[scores={use.lingering_potion=1..}] run scoreboard players reset @s use.lingering_potion
execute if entity @a[scores={use.carrot_stick=1..},limit=1] as @a[scores={use.carrot_stick=1..}] run scoreboard players reset @s use.carrot_stick
execute if entity @a[scores={use.fungus_stick=1..},limit=1] as @a[scores={use.fungus_stick=1..}] run scoreboard players reset @s use.fungus_stick




execute if entity @a[advancements={ex3:general/attack/dealt=true},limit=1] as @a[advancements={ex3:general/attack/dealt=true}] run advancement revoke @s only ex3:general/attack/dealt
#execute if entity @a[advancements={ex3:general/attack/dealt_to_player=true},limit=1] as @a[advancements={ex3:general/attack/dealt_to_player=true}] run advancement revoke @s only ex3:general/attack/dealt_to_player
execute if entity @a[advancements={ex3:general/attack/melee_dealt=true},limit=1] as @a[advancements={ex3:general/attack/melee_dealt=true}] run advancement revoke @s only ex3:general/attack/melee_dealt
execute if entity @a[advancements={ex3:general/attack/melee_dealt_to_player=true},limit=1] as @a[advancements={ex3:general/attack/melee_dealt_to_player=true}] run advancement revoke @s only ex3:general/attack/melee_dealt_to_player
execute if entity @a[advancements={ex3:general/attack/melee_taken_by_player=true},limit=1] as @a[advancements={ex3:general/attack/melee_taken_by_player=true}] run advancement revoke @s only ex3:general/attack/melee_taken_by_player
execute if entity @a[advancements={ex3:general/attack/taken_by_fall=true},limit=1] as @a[advancements={ex3:general/attack/taken_by_fall=true}] run advancement revoke @s only ex3:general/attack/taken_by_fall
execute if entity @a[advancements={ex3:general/attack/trans=true},limit=1] as @a[advancements={ex3:general/attack/trans=true}] run advancement revoke @s only ex3:general/attack/trans

execute if entity @a[advancements={ex3:general/attack/source/weapon/0004=true},limit=1] as @a[advancements={ex3:general/attack/source/weapon/0004=true}] run advancement revoke @s only ex3:general/attack/source/weapon/0004
execute if entity @a[advancements={ex3:general/attack/source/weapon/0005=true},limit=1] as @a[advancements={ex3:general/attack/source/weapon/0005=true}] run advancement revoke @s only ex3:general/attack/source/weapon/0005
execute if entity @a[advancements={ex3:general/attack/source/skill/0011=true},limit=1] as @a[advancements={ex3:general/attack/source/skill/0011=true}] run advancement revoke @s only ex3:general/attack/source/skill/0011
execute if entity @a[advancements={ex3:general/attack/source/skill/0015=true},limit=1] as @a[advancements={ex3:general/attack/source/skill/0015=true}] run advancement revoke @s only ex3:general/attack/source/skill/0015

execute if entity @a[advancements={ex3:general/emit_hurt=true},limit=1] as @a[advancements={ex3:general/emit_hurt=true}] run advancement revoke @s only ex3:general/emit_hurt


execute if entity @a[advancements={ex3:general/use.crossbow=true},limit=1] as @a[advancements={ex3:general/use.crossbow=true}] run advancement revoke @s only ex3:general/use.crossbow
execute if entity @a[advancements={ex3:general/use.shield=true},limit=1] as @a[advancements={ex3:general/use.shield=true}] run advancement revoke @s only ex3:general/use.shield


execute if entity @e[tag=damage_test,limit=1] as @e[tag=damage_test] at @s anchored eyes facing entity NeAc eyes run tp @s ~ ~ ~ ~ ~

execute if entity @e[tag=kill,limit=1] as @e[tag=kill] run kill @s

execute if entity @e[tag=kill1tick,scores={value=1},limit=1] as @e[tag=kill1tick,scores={value=1}] at @s run tp ~ 0 ~
execute if entity @e[tag=kill1tick,scores={value=1},limit=1] as @e[tag=kill1tick,scores={value=1}] run kill @s
execute if entity @e[tag=kill1tick,limit=1] as @e[tag=kill1tick] run scoreboard players add @s value 1


#tagの削除
execute if entity @a[tag=king,limit=1] as @a[tag=king] run tag @s remove king
execute if entity @a[tag=emit,limit=1] as @a[tag=emit] run tag @s remove emit
execute if entity @a[tag=skill-used,limit=1] as @a[tag=skill-used] run tag @s remove skill-used
execute if entity @a[tag=not-blind-now,limit=1] as @a[tag=not-blind-now] run tag @s remove not-blind-now
execute if entity @a[tag=into_void,limit=1] as @a[tag=into_void] run tag @s remove into_void
execute if entity @a[tag=shield-guard,limit=1] as @a[tag=shield-guard] run tag @s remove shield-guard
execute if entity @a[tag=support6_shield,limit=1] as @a[tag=support6_shield] run tag @s remove support6_shield
execute if entity @e[tag=skill2-melt_now,limit=1] as @e[tag=skill2-melt_now] run tag @s remove skill2-melt_now
execute if entity @a[tag=skill4-now,limit=1] as @a[tag=skill4-now] run tag @s remove skill4-now
execute if entity @a[tag=skill12-now,limit=1] as @a[tag=skill12-now] run tag @s remove skill12-now
execute if entity @a[tag=skill18-now,limit=1] as @a[tag=skill18-now] run tag @s remove skill18-now
execute if entity @a[tag=skill24-now,limit=1] as @a[tag=skill24-now] run tag @s remove skill24-now
execute if entity @a[tag=skill33-now,limit=1] as @a[tag=skill33-now] run tag @s remove skill33-now
execute if entity @e[tag=melee_dealt,limit=1] as @e[tag=melee_dealt] run tag @s remove melee_dealt
execute if entity @e[tag=melee_taken,limit=1] as @e[tag=melee_taken] run tag @s remove melee_taken
execute if entity @e[type=minecraft:arrow,tag=setup,limit=1] as @e[type=minecraft:arrow,tag=setup] run tag @s remove setup
