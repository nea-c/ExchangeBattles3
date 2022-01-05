#ゲームモード
fill ~ ~2 ~ ~-16 ~-2 ~ minecraft:air
fill ~ ~2 ~1 ~-16 ~-2 ~1 minecraft:gray_concrete
playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2

#戻る
setblock ~-3 ~-2 ~1 minecraft:warped_stem[axis=z]
setblock ~-3 ~-2 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"戻る","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black","clickEvent":{"action":"run_command","value":"playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 2"}}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"execute positioned 0 102 12 run function ex3:lobby/menu/opened"}}'}

#ランダム
setblock ~-2 ~-1 ~1 minecraft:netherite_block
setblock ~-2 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"ランダム","bold":true,"color":"black"}',Text3:'{"text":"右クリック","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/gamemode/random/select"}}'}

#PvP枠ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
setblock ~-3 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"PvP >","bold":true,"color":"black"}',Text4:'{"text":"------------------","color":"black"}'}

fill ~-5 ~-1 ~1 ~-8 ~-1 ~1 smooth_stone
#デスマ
execute if score #gamemode_random_pvp_2team_deathmatch value matches 1 run setblock ~-5 ~-1 ~1 minecraft:gold_block
setblock ~-5 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"デスマッチ","bold":true,"color":"black"}',Text3:'{"text":"2チーム","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/gamemode/pvp/2team/deathmatch/open"}}'}
#スローター
execute if score #gamemode_random_pvp_2team_slaughter value matches 1 run setblock ~-6 ~-1 ~1 minecraft:gold_block
setblock ~-6 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"スローター","bold":true,"color":"black"}',Text3:'{"text":"2チーム","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/gamemode/pvp/2team/slaughter/open"}}'}
#プロテクト
execute if score #gamemode_random_pvp_2team_protect value matches 1 run setblock ~-7 ~-1 ~1 minecraft:gold_block
setblock ~-7 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"プロテクト","bold":true,"color":"black"}',Text3:'{"text":"2チーム","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/gamemode/pvp/2team/protect/open"}}'}
#イーミット
execute if score #gamemode_random_pvp_2team_emit value matches 1 run setblock ~-8 ~-1 ~1 minecraft:gold_block
setblock ~-8 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"イーミット","bold":true,"color":"black"}',Text3:'{"text":"2チーム","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/gamemode/pvp/2team/emit/open"}}'}
#バトロワ
fill ~-10 ~-1 ~1 ~-10 ~-1 ~1 smooth_stone
execute if score #gamemode_random_pvp_ffa_battleroyal value matches 1 run setblock ~-10 ~-1 ~1 minecraft:gold_block
setblock ~-10 ~-1 ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"バトルロイヤル","bold":true,"color":"black"}',Text3:'{"text":"FFA","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"function ex3:lobby/menu/parts/gamemode/pvp/ffa/battleroyal/open"}}'}


#PvE枠ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
setblock ~-3 ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"PvE >","bold":true,"color":"black"}',Text4:'{"text":"------------------","color":"black"}'}
#playsound minecraft:block.note_block.bass master @a

#fill ~-5 ~ ~1 ~-5 ~ ~1 smooth_stone
#ボスバトル NeAc
#execute if score #gamemode_random_pve_ value matches 1 run setblock ~-5 ~ ~1 minecraft:gold_block
setblock ~-5 ~ ~ minecraft:birch_wall_sign{Text1:'{"text":"------------------","color":"black"}',Text2:'{"text":"ディフェンダーズ","bold":true,"color":"black"}',Text3:'{"text":"Wave","color":"black"}',Text4:'{"text":"------------------","color":"black","clickEvent":{"action":"run_command","value":"playsound minecraft:block.note_block.bass master @a"}}'}