#試合開始前の地点にテレポートする処理モジュールなので記述なし
gamemode adventure @s[team=!,team=!wait]

#地下鉄
#2チームPvP
execute if score #stage value matches 1 run teleport @s[team=purpur] 1 108 66 180 0
execute if score #stage value matches 1 run teleport @s[team=emerald] -2 108 -67 0 0






#インボリュート
#2チームPvP
execute if score #stage value matches 2 run teleport @s[team=purpur] -32 104 -32 -45 0
execute if score #stage value matches 2 run teleport @s[team=emerald] 32 104 32 135 0








#ファーマメント
#2チームPvP
execute if score #stage value matches 3 run teleport @s[team=purpur] -17 106 -17 -45 0
execute if score #stage value matches 3 run teleport @s[team=emerald] 17 106 17 135 0







#名称未定
#2チームPvP
#execute if score #stage value matches 4 run teleport @s[team=purpur] =
#execute if score #stage value matches 4 run teleport @s[team=emerald] =

