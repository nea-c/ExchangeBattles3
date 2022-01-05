#ゲーム終了処理

#強制DRAW化
scoreboard players set #emerald value 0
scoreboard players set #purpur value 0

#強制DRAW化以外の処理は通常処理に任せる
function ex3:game/end/judge

#全体にチャット
tellraw @a ["",{"text":"[システム]","color":"yellow"},{"text":" "},{"selector":"@s"},{"text":"がゲームを強制終了しました"}]

