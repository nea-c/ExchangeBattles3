#スコアオブジェクト作成
scoreboard objectives add value dummy
scoreboard objectives add value2 dummy
scoreboard objectives add logout minecraft.custom:minecraft.leave_game
scoreboard objectives add playing dummy
scoreboard objectives add game_number dummy
scoreboard objectives add mob_number dummy
scoreboard objectives add number dummy
scoreboard objectives add tab dummy
scoreboard objectives add close_page dummy
scoreboard objectives add weapon_page dummy
scoreboard objectives add support_page dummy
scoreboard objectives add skill_page dummy
scoreboard objectives add radio_chat_page dummy
scoreboard objectives add weapon dummy
scoreboard objectives add weapon_pos dummy
scoreboard objectives add support dummy
scoreboard objectives add support_pos dummy
scoreboard objectives add skill1 dummy
scoreboard objectives add skill2 dummy
scoreboard objectives add skill3 dummy
scoreboard objectives add skill1_pos dummy
scoreboard objectives add skill2_pos dummy
scoreboard objectives add skill3_pos dummy
scoreboard objectives add skill1_ct dummy
scoreboard objectives add skill2_ct dummy
scoreboard objectives add skill3_ct dummy
scoreboard objectives add skill1_ct_max dummy
scoreboard objectives add skill2_ct_max dummy
scoreboard objectives add skill3_ct_max dummy
scoreboard objectives add arrow dummy
scoreboard objectives add arrow_add dummy
scoreboard objectives add drop minecraft.custom:minecraft.drop
scoreboard objectives add use.bow minecraft.used:minecraft.bow
scoreboard objectives add use.snowball minecraft.used:minecraft.snowball
scoreboard objectives add health dummy
scoreboard objectives add max_health dummy
scoreboard objectives add regeneration dummy
scoreboard objectives add health_display dummy [{"text":"health"}]
scoreboard objectives modify health_display rendertype integer
scoreboard objectives setdisplay belowName health_display
scoreboard objectives add health_20heart health
scoreboard objectives add food food
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add use.carrot_stick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add use.fungus_stick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add team_number dummy
scoreboard objectives add keep_team dummy
scoreboard objectives add jump_achievement dummy
scoreboard objectives add damage_shield minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add damage_resist minecraft.custom:minecraft.damage_resisted
scoreboard objectives add hurt_by dummy
scoreboard objectives add damage_source dummy
scoreboard objectives add last_hurt_by dummy
scoreboard objectives add keep_hurt_by dummy
scoreboard objectives add hurt_time_resist dummy
scoreboard objectives add keep_hurt_shield dummy
scoreboard objectives add hurt_time_shield dummy
scoreboard objectives add total_taken dummy
scoreboard objectives add respawn-x dummy
scoreboard objectives add respawn-y dummy
scoreboard objectives add respawn-z dummy
scoreboard objectives add use.splash_potion minecraft.used:minecraft.splash_potion
scoreboard objectives add use.lingering_potion minecraft.used:minecraft.lingering_potion



#仮想プレイヤースコア値初期化
scoreboard players set #playing value 0
scoreboard players set #setting_regeneration value 1
scoreboard players set #setting_team_armor value 2
scoreboard players set #setting_time value 6000
#scoreboard players set #setting_minute_page value 1
scoreboard players set #setting_gamemode value 0
scoreboard players set #setting_stage value 0
scoreboard players set #setting_exchange value 1
scoreboard players set #setting_timeover value 2
scoreboard players set #exchange value 0
scoreboard players set #number_base number 1
scoreboard players set #number_base mob_number 0
scoreboard players set #team_change value 1
scoreboard players set #menu_lock value 0
#scoreboard players set #menu_random_toggle value 2
scoreboard players set #game_number value 0

scoreboard players set #max_health_base value 40
scoreboard players set #max_arrow_base value 7

scoreboard players set #gamemode_random_pvp_2team_deathmatch value 1
scoreboard players set #gamemode_random_pvp_2team_slaughter value 1
scoreboard players set #gamemode_random_pvp_2team_protect value 1
scoreboard players set #gamemode_random_pvp_2team_emit value 1
scoreboard players set #gamemode_random_pvp_ffa_battleroyal value 1
#scoreboard players set #gamemode_random_pve_ value 1
#scoreboard players set #gamemode_random_pve_ value 0

scoreboard players set #gamemode_pvp_2team_deathmatch_time value 5
scoreboard players set #gamemode_pvp_2team_slaughter_time value 3
scoreboard players set #gamemode_pvp_2team_protect_time value 5
scoreboard players set #gamemode_pvp_2team_emit_time value 5
scoreboard players set #gamemode_pvp_ffa_battleroyal_time value 5
#scoreboard players set #gamemode_pve__time value 0


scoreboard players set #stage_random_subway value 1
scoreboard players set #stage_random_involute value 1
scoreboard players set #stage_random_firmament value 1
#scoreboard players set #stage_random_ value 1
#scoreboard players set #stage_random_ value 1


scoreboard players set #2team_random_toggle value 1
scoreboard players set #trio_team_random_toggle value 1


scoreboard players set #game_auto_start value 0
scoreboard players set #game_auto_start_time value 30


scoreboard players set #team_auto_change value 2


scoreboard players set #10000 value 10000
scoreboard players set #6000 value 6000
scoreboard players set #1000 value 1000
scoreboard players set #100 value 100
scoreboard players set #60 value 60
scoreboard players set #20 value 20
scoreboard players set #10 value 10
scoreboard players set #8 value 8
scoreboard players set #5 value 5
scoreboard players set #4 value 4
scoreboard players set #3 value 3
scoreboard players set #2 value 2
scoreboard players set #-1 value -1

scoreboard players set #2^15 value 32768
scoreboard players set #2^16 value 65536


#ワールドにいる人のスコア・チーム初期化
xp set @a 0 levels
xp set @a 0 points
scoreboard players reset @a
team leave @a
advancement revoke @a everything
tag @a remove menu_owner


execute positioned 0 123 0 run function ex3:lobby/menu/parts/team/change/enable


difficulty normal



#ゲームゲームモード変更
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule randomTickSpeed 0
gamerule doMobSpawning false
gamerule doTileDrops false
gamerule spawnRadius 0
gamerule maxEntityCramming 0
gamerule keepInventory true
gamerule naturalRegeneration false
gamerule doFireTick false
gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule mobGriefing false

#時間を6000(昼)に設定
time set 6000

#天候を晴れに設定
weather clear

#サイドバー削除
scoreboard objectives setdisplay sidebar

#バニラデータパックを無効化
#datapack disable "vanilla"

#最大コマンド実行数をint最大に変更
gamerule maxCommandChainLength 2147483647

#チーム作成

team add emerald [{"text":"Emerald","color":"green"}]
team modify emerald color green
team modify emerald nametagVisibility hideForOtherTeams
team modify emerald friendlyFire false

team add purpur [{"text":"Purpur","color":"light_purple"}]
team modify purpur color light_purple
team modify purpur nametagVisibility hideForOtherTeams
team modify purpur friendlyFire false

team add ffa [{"text":"FFA","color":"yellow"}]
team modify ffa color yellow
team modify ffa nametagVisibility hideForOwnTeam
team modify ffa seeFriendlyInvisibles false

team add pve [{"text":"PvE","color":"aqua"}]
team modify pve color aqua
team modify pve friendlyFire false


team add random [{"text":"Random"}]


team add wait [{"text":"Waiting"}]
team modify wait prefix [{"text":"[waiting] ","color":"gray"}]

setblock 0 0 0 shulker_box
execute positioned 0 123 0 run function ex3:generate_structure/lobby
function ex3:lobby/sandbag_summon

setblock 0 101 9 minecraft:oak_sign[rotation=8]{Text1:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/lock/close"}}',Text2:'{"text":"メニュー部屋を閉鎖","color":"black","bold":true}',Text3:'{"text":"右クリック","color":"black"}',Text4:'{"text":"------------------","color":"black"}'} destroy