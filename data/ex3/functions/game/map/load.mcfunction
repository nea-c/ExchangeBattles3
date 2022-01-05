#マップロード(？)をする処理モジュールなので記述なし
#execute asで呼び出しているので@sで記述してください

function ex3:generate_structure/air

execute positioned 0 130 0 run fill ~ ~ ~ ~32 ~29 ~32 air
execute positioned 0 130 0 run fill ~ ~ ~ ~-32 ~29 ~32 air
execute positioned 0 130 0 run fill ~ ~ ~ ~32 ~29 ~-32 air
execute positioned 0 130 0 run fill ~ ~ ~ ~-32 ~29 ~-32 air

#地下鉄
execute if score #stage value matches 1 run function ex3:generate_structure/stage/subway

#インボリュート
execute if score #stage value matches 2 run function ex3:generate_structure/stage/involute


#ファーマメント
execute if score #stage value matches 3 run function ex3:generate_structure/stage/firmament


#名称未定
#execute if score #stage value matches 4 run 
