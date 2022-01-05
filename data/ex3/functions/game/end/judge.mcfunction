#ゲーム終了処理

#モブをすべて削除
execute as @e[type=!player,tag=!fixed] at @s run tp @s ~ -512 ~
execute as @e[type=!player,tag=!fixed] run kill @s

#スキル等強制終了処理
execute as @e[scores={number=0..},type=!player,tag=fixed,tag=death-owner-end] run tag @s add end--

#ボスバーの非表示
bossbar remove ex3:game
bossbar remove ex3:boss
data remove storage ex3:game bossbar
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~-500 ~ 0 2 1
title @a times 0 40 20
title @a title ["",{"text":"Finish!","bold":true,"underlined":true}]
title @a subtitle ["",{"text":""}]

#ロビー帰還処理開始
#scoreboard players set #ending value 1
scoreboard players set #playing value 2

#タイトルコマンドがゲーム用以外表示されないようにする
scoreboard players set #display_game_title value 1

#プレイヤーのplayingスコアを2に
scoreboard players set @a playing 2

#タイマーを停止
scoreboard players reset #timer

#コンクルージョンリセット
scoreboard players reset #conclusion

#プロテクト時のタグ削除

#ボーダーリセット
worldborder center 0 0
worldborder set 100000


execute if score #gamemode value matches 1201 if score #emerald value matches 1 as @a[team=ffa,scores={max_health=0..}] run scoreboard players operation #battleroyal_win value = @s number


#スコアリセット
tag @a remove skill6-resist
execute as @a run function ex3:items/auxiliary/arrow/reload/complete
scoreboard players reset @a relieve_damage
scoreboard players reset @a regeneration
scoreboard players reset @a respawn
scoreboard players reset @a respawn-x
scoreboard players reset @a respawn-y
scoreboard players reset @a respawn-z


scoreboard players reset #display_game_title

gamemode spectator @a
scoreboard players reset @a max_health
title @a actionbar {"text":""}

schedule function ex3:game/end/result/execution 5s