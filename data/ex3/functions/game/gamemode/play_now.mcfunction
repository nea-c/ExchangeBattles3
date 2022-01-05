#ゲームモード内容を試合前にチャットに表示させるためだけのfunction書かなくても支障はない
tellraw @a ["",{"text":"------------------------------","color":"white"}]


#ステージ
execute if score #stage value matches 1 run tellraw @a ["",{"text":"ステージ ： 地下鉄"}]
execute if score #stage value matches 2 run tellraw @a ["",{"text":"ステージ ： インボリュート"}]
execute if score #stage value matches 3 run tellraw @a ["",{"text":"ステージ ： ファーマメント"}]



#ゲームモード
execute if score #gamemode value matches 1101 run tellraw @a ["",{"text":"ゲームモード ： デスマッチ"}]
execute if score #gamemode value matches 1102 run tellraw @a ["",{"text":"ゲームモード ： スローター"}]
execute if score #gamemode value matches 1103 run tellraw @a ["",{"text":"ゲームモード ： プロテクト"}]
execute if score #gamemode value matches 1104 run tellraw @a ["",{"text":"ゲームモード ： イーミット"}]
execute if score #gamemode value matches 1201 run tellraw @a ["",{"text":"ゲームモード ： バトルロイヤル"}]
execute if score #gamemode value matches 2101 run tellraw @a ["",{"text":"ゲームモード ： ディフェンダーズ"}]



#ゲームモードタイトル
title @a times 20 60 20
execute if score #gamemode value matches 1101 run title @a title ["",{"text":"- デスマッチ -","bold":true}]
execute if score #gamemode value matches 1101 run title @a subtitle ["",{"text":"- 敵を殲滅せよ -","bold":true,"underlined":true}]
execute if score #gamemode value matches 1102 run title @a title ["",{"text":"- スローター -","bold":true}]
execute if score #gamemode value matches 1102 run title @a subtitle ["",{"text":"- 敵を倒し続けよ -","bold":true,"underlined":true}]
execute if score #gamemode value matches 1103 run title @a title ["",{"text":"- プロテクト -","bold":true}]
execute if score #gamemode value matches 1103 run title @a subtitle ["",{"text":"- 王を制圧せよ -","bold":true,"underlined":true}]
execute if score #gamemode value matches 1104 run title @a title ["",{"text":"- イーミット -","bold":true}]
execute if score #gamemode value matches 1104 run title @a subtitle ["",{"text":"- 目標を領有し続けよ -","bold":true,"underlined":true}]
execute if score #gamemode value matches 1201 run title @a title ["",{"text":"- バトルロイヤル -","bold":true}]
execute if score #gamemode value matches 1201 run title @a subtitle ["",{"text":"- 最後の一人まで生き残れ -","bold":true,"underlined":true}]
execute if score #gamemode value matches 2101 run title @a title ["",{"text":"- ディフェンダーズ -","bold":true}]
execute if score #gamemode value matches 2101 run title @a subtitle ["",{"text":"- 協力してコアを守れ -","bold":true,"underlined":true}]



#制限時間
tellraw @a ["",{"text":"制限時間 ： "},{"score":{"name":"#timer_moth","objective":"value"}},{"text":"分"}]

scoreboard players reset #timer_moth


#エクスチェンジ
execute if score #setting_exchange value matches 1 run tellraw @a ["",{"text":"エクスチェンジ ： 全て"}]
execute if score #setting_exchange value matches 2 run tellraw @a ["",{"text":"エクスチェンジ ： 切り替えのみ"}]
execute if score #setting_exchange value matches 3 run tellraw @a ["",{"text":"エクスチェンジ ： エクストレージのみ"}]
execute if score #setting_exchange value matches 4 run tellraw @a ["",{"text":"エクスチェンジ ： 無効"}]



#参加チーム
tellraw @a[team=emerald] ["",{"text":"あなたは"},{"text":"チームエメラルド","color":"green","bold":true},{"text":"です"}]
tellraw @a[team=purpur] ["",{"text":"あなたは"},{"text":"チームプルプァ","color":"light_purple","bold":true},{"text":"です"}]
tellraw @a[team=] ["",{"text":"あなたは"},{"text":"観戦","color":"white","bold":true},{"text":"です"}]
tellraw @a[team=wait] ["",{"text":"あなたは"},{"text":"観戦","color":"white","bold":true},{"text":"です"}]
tellraw @a[team=ffa] ["",{"text":"あなたは"},{"text":"バトルロイヤル","color":"yellow","bold":true},{"text":"に参加しています"}]
tellraw @a[team=pve] ["",{"text":"あなたは"},{"text":"PvE","color":"aqua","bold":true},{"text":"に参加しています"}]



tellraw @a ["",{"text":"------------------------------","color":"white"}]




#バトルロイヤル時の注意喚起
execute if score #gamemode value matches 1201..1299 run tellraw @a ["",{"text":"------------------------------","color":"#ee0000"},{"text":"\n開始地点を移動して決定してください"},{"text":"\nカウントダウン終了時にその地点から開始します"},{"text":"\n------------------------------","color":"#ee0000"}]