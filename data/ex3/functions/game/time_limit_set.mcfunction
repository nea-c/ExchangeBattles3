#ゲームモード毎の制限時間設定処理
execute if score #gamemode value matches 1101 run scoreboard players operation #timer_moth value = #gamemode_pvp_2team_deathmatch_time value
execute if score #gamemode value matches 1102 run scoreboard players operation #timer_moth value = #gamemode_pvp_2team_slaughter_time value
execute if score #gamemode value matches 1103 run scoreboard players operation #timer_moth value = #gamemode_pvp_2team_protect_time value
execute if score #gamemode value matches 1104 run scoreboard players operation #timer_moth value = #gamemode_pvp_2team_emit_time value
execute if score #gamemode value matches 1201 run scoreboard players operation #timer_moth value = #gamemode_pvp_ffa_battleroyal_time value
execute if score #gamemode value matches 2101 run scoreboard players operation #timer_moth value = #gamemode_pve_boss_neac_time value

