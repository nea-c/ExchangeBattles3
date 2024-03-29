#> ex3:general/marker_motion/main
#
# Markerのdata.MarkerMotion内に speed:{amount:150,loss:{amount:0.950,type:"multiply"}},gravity:392.00,bounce:{count:2,e:0.950,g:1b},stopwith:{hit:1b} のように記述
#
## 設定項目
#   speed : 速度関連 - (下に子パラメータ
#       amount : 初期速度 (この数値は自動的に変動します) [整数値]
#       loss : tick毎に減少していく量 - (下に子パラメータ
#           amount : 量。typeパラメータによって効果が異なる。
#           type : amountの計算方法を変更する。 - (下にタイプ一覧
#               "constant" : 減算で計算します [整数値] 9なら9損失
#               "multiply" : 倍率で計算します [小数値,1/1000] 0.9なら10%損失
#   gravity : 重力の強さ (98の倍数が比較的決めやすくておすすめ) [小数値,1/100]
#   bounce : 跳ね返りの実装 - (下に子パラメータ
#       count : 跳ねる回数。-1で無限。 [整数値]
#       e : 跳ねたときに減少するスピードの量。倍率で計算します。 [小数値,1/1000] 0.9なら10%損失
#       g : 重力での加速を考慮して跳ねます。true,falseで入力も可。 [真偽値]
#   stopwith : 途中で移動を停止する条件を指定する。 - (下に子パラメータ
#       hit : ヒットしたエンティティがいた時。true,falseで入力も可。 [真偽値]
#
## 設定項目に関して
#   data.MarkerMotion.speed.amountのみで動作します。
#   小数値はgravity以外は第3位まで、gravityは第2位まで設定できます。
#
## 返りタグ
#   MarkerMotion.on_block : ブロックに接触した時 (跳ねた場合は付与されません)
#   MarkerMotion.on_block.wall , MarkerMotion.on_block.y , MarkerMotion.on_block.[方角] : ブロックに接触した方角やカテゴリ (MarkerMotion.on_blockがない場合は付与されません)
#   MarkerMotion.speed.0 : スピードが0になった時
#   MarkerMotion.stopwith.hit : data.stopwith.hitがtrueかつ、hitタグを付与したエンティティがいた時
#   MarkerMotion.stop : 移動処理(このfunction)が実行されないようになるタグ。MarkerMotion.on_block,MarkerMotion.stopwith.hit,MarkerMotion.speed.0のいずれかのタグがあれば必ず付与されています。
#
## 返りNBT
#   data.MarkerMotion.Motion : 移動量 (この値使って綺麗な繋がったパーティクル出したりとかできるかもしれない)
#   data.MarkerMotion.GravitySum : 重力の合計 (1秒毎にリセットとかで変な挙動できるかもしれない)
#
## 当たり判定に関して
#   このライブラリを呼ぶ前に判定に入れたいエンティティに対しtargetタグを付与します。
#   当たり判定はヒットボックスサイズで検知され、hitタグを返します。
#   付与された,付与したタグは必ず削除するようにしてください。
#
## tag_remove.mcfunction
#   このライブラリで自動的に付与されるタグを全て剥がすfunctionです。
#   実行者はそれらのタグがついたマーカーに必ず変更してください。
#
# @within
#   function ex3:general/marker_motion/


# ベクトル、到達目標位置用の取得に使うマーカー
    summon marker ~ ~ ~ {Tags:["MarkerMotion.this","MarkerMotion.thisP","MarkerMotion.this.All"]}

# ベクトル取得
    execute positioned 0.0 0.0 0.0 rotated as @s run tp @e[tag=MarkerMotion.this,limit=1] ^ ^ ^1
    data modify storage neac: marker_motion_pos set from entity @e[tag=MarkerMotion.this,limit=1] Pos
    execute store result score #MarkerMotion.Pos1 value run data get storage neac: marker_motion_pos[0] 10000
    execute store result score #MarkerMotion.Pos2 value run data get storage neac: marker_motion_pos[1] 10000
    execute store result score #MarkerMotion.Pos3 value run data get storage neac: marker_motion_pos[2] 10000

# 自身のdataから重力,スピード,重力加速度の合計とかを取得
    # まずは自身のデータを一時ストレージに
        data modify storage neac: marker_motion set from entity @s data.MarkerMotion
        data modify storage neac: marker_motion_pos set from entity @s Pos
    # 重力
        execute store result score #MarkerMotion.Gravity value run data get storage neac: marker_motion.gravity 100
    # 重力加速度
        execute store result score #MarkerMotion.GravitySum value run data get storage neac: marker_motion.GravitySum
    # スピード
        execute store result score #MarkerMotion.Speed value run data get storage neac: marker_motion.speed.amount
    # スピード減少量
        execute unless data storage neac: marker_motion.speed.loss{type:"multiply"} store result score #MarkerMotion.SpeedLoss value run data get storage neac: marker_motion.speed.loss.amount
        execute if data storage neac: marker_motion.speed.loss{type:"multiply"} if data storage neac: marker_motion.speed.loss.amount store result score #MarkerMotion.SpeedLoss value run data get storage neac: marker_motion.speed.loss.amount 1000
    # Motionの初期化
        execute unless data storage neac: marker_motion.Motion run data modify storage neac: marker_motion.Motion set value [0d,0d,0d]

# X
    scoreboard players operation #MarkerMotion.Pos1 value *= #MarkerMotion.Speed value
    execute store result storage neac: marker_motion.Motion[0] double 0.0001 run scoreboard players operation #MarkerMotion.Pos1 value /= #100 value
# Y
    scoreboard players operation #MarkerMotion.Pos2 value *= #MarkerMotion.Speed value
    # 重力分を減算してから処理
        scoreboard players operation #MarkerMotion.GravitySum value += #MarkerMotion.Gravity value
        scoreboard players operation #MarkerMotion.Pos2 value -= #MarkerMotion.GravitySum value
        scoreboard players operation #MarkerMotion.Bounce.CG.YVec.Temporary1 value = #MarkerMotion.Pos2 value
    execute store result storage neac: marker_motion.Motion[1] double 0.0001 run scoreboard players operation #MarkerMotion.Pos2 value /= #100 value
    # 重力加速度をnbtに格納
        execute store result storage neac: marker_motion.GravitySum int 1 run scoreboard players get #MarkerMotion.GravitySum value

# Z
    scoreboard players operation #MarkerMotion.Pos3 value *= #MarkerMotion.Speed value
    execute store result storage neac: marker_motion.Motion[2] double 0.0001 run scoreboard players operation #MarkerMotion.Pos3 value /= #100 value

# 現在位置とモーションの数値を取得して計算
    # 現在位置
        execute store result score #MarkerMotion.Pos1 value run data get storage neac: marker_motion_pos[0] 10000
        execute store result score #MarkerMotion.Pos2 value run data get storage neac: marker_motion_pos[1] 10000
        execute store result score #MarkerMotion.Pos3 value run data get storage neac: marker_motion_pos[2] 10000
    # モーション値
        execute store result score #MarkerMotion.Motion1 value run data get storage neac: marker_motion.Motion[0] 10000
        execute store result score #MarkerMotion.Motion2 value run data get storage neac: marker_motion.Motion[1] 10000
        execute store result score #MarkerMotion.Motion3 value run data get storage neac: marker_motion.Motion[2] 10000

# 到達目標位置にベクトル取得時に使ったマーカーを使いまわして配置
    # その際離れているとPosが代入できないっぽいので一度実行位置にTP
        tp @e[tag=MarkerMotion.this,limit=1] ~ ~ ~

    # 計算&代入
        execute store result storage neac: marker_motion_pos[0] double 0.0001 run scoreboard players operation #MarkerMotion.Pos1 value += #MarkerMotion.Motion1 value
        execute store result storage neac: marker_motion_pos[1] double 0.0001 run scoreboard players operation #MarkerMotion.Pos2 value += #MarkerMotion.Motion2 value
        execute store result storage neac: marker_motion_pos[2] double 0.0001 run scoreboard players operation #MarkerMotion.Pos3 value += #MarkerMotion.Motion3 value
        data modify entity @e[tag=MarkerMotion.this,limit=1] Pos set from storage neac: marker_motion_pos

# 現在位置と到達目標位置の間にブロックがあるかチェック
    # 現在位置用のマーカー召喚
        summon marker ~ ~ ~ {Tags:["MarkerMotion.this2","MarkerMotion.thisP","MarkerMotion.this.All"]}
    # 現在位置用マーカーを到達目標位置に向ける
        execute as @e[tag=MarkerMotion.this2,limit=1] at @s facing entity @e[tag=MarkerMotion.this,sort=furthest,limit=1] feet run tp @s ~ ~ ~ ~ ~
    # function再起で到達目標位置までの間にブロックがあるかチェック
    # その際targetタグがいればヒット判定を返す　また、stopwith.hitがtrueであればMarkerMotion.stopwith.hitを返す
        tag @s add MarkerMotion.me
        execute as @e[tag=MarkerMotion.this2,limit=1] run function ex3:general/marker_motion/tp
        tag @s remove MarkerMotion.me
        # 現在位置と到達目標位置の距離が限りなく近い場合は間にブロックがなかったことにして、下のnearestTPの判定にならないように遠ざける
            execute as @e[tag=MarkerMotion.this2,limit=1] at @s if entity @e[tag=this,limit=1,distance=..0.003125] run tp @s ^ ^ ^4

# 到達目標位置と、一番近いブロック位置のマーカーにはthisPのタグがついていて、最も近いほうにthisをTPする
    tp @e[tag=MarkerMotion.this,limit=1] @e[tag=MarkerMotion.thisP,sort=nearest,limit=1]

# 移動させた現在位置用マーカーを戻す
    tp @e[tag=MarkerMotion.this2,limit=1] ~ ~ ~

# TP後のthisのPosを自身に代入する
    data modify entity @s Pos set from entity @e[tag=MarkerMotion.this,limit=1] Pos

# Pos代入によるズレで自身がブロックに埋まっていたら後ろに少し下がる
    execute at @s align xyz unless block ~ ~ ~ #ex3:like_air at @s rotated as @e[tag=MarkerMotion.this2,limit=1] run tp @s ^ ^ ^-0.01

# ブロック接触チェック
    # east
        execute unless score #MarkerMotion.BlockCheck value matches 1.. at @s unless block ~0.01 ~ ~ #ex3:like_air run scoreboard players set #MarkerMotion.BlockCheck value 1
    # west
        execute unless score #MarkerMotion.BlockCheck value matches 1.. at @s unless block ~-0.01 ~ ~ #ex3:like_air run scoreboard players set #MarkerMotion.BlockCheck value 2
    # up
        execute unless score #MarkerMotion.BlockCheck value matches 1.. at @s unless block ~ ~0.01 ~ #ex3:like_air run scoreboard players set #MarkerMotion.BlockCheck value 3
    # down
        execute unless score #MarkerMotion.BlockCheck value matches 1.. at @s unless block ~ ~-0.01 ~ #ex3:like_air run scoreboard players set #MarkerMotion.BlockCheck value 4
    # south
        execute unless score #MarkerMotion.BlockCheck value matches 1.. at @s unless block ~ ~ ~0.01 #ex3:like_air run scoreboard players set #MarkerMotion.BlockCheck value 5
    # north
        execute unless score #MarkerMotion.BlockCheck value matches 1.. at @s unless block ~ ~ ~-0.01 #ex3:like_air run scoreboard players set #MarkerMotion.BlockCheck value 6
    
    # 接触検知したらいろいろするやつ
        execute if score #MarkerMotion.BlockCheck value matches 1 at @s align x run tp @s ~0.98 ~ ~
        execute if score #MarkerMotion.BlockCheck value matches 2 at @s align x run tp @s ~0.02 ~ ~
        execute if score #MarkerMotion.BlockCheck value matches 3 at @s align y run tp @s ~ ~0.98 ~
        execute if score #MarkerMotion.BlockCheck value matches 4 at @s align y run tp @s ~ ~0.02 ~
        execute if score #MarkerMotion.BlockCheck value matches 5 at @s align z run tp @s ~ ~ ~0.98
        execute if score #MarkerMotion.BlockCheck value matches 6 at @s align z run tp @s ~ ~ ~0.02

        # ここが動いたら以降の処理(タグつけたりが動かなくなる仕様)
            # 1瞬だけつくようにBounce検知用タグの削除。付与は marker_motion:bounce
                execute if entity @s[tag=MarkerMotion.bounce] run tag @s remove MarkerMotion.bounce
            execute store result score #MarkerMotion.Temporary1 value run data get storage neac: marker_motion.bounce.count
            execute if score #MarkerMotion.Temporary1 value matches -1 run scoreboard players set #MarkerMotion.Temporary1 value 1
            execute if score #MarkerMotion.BlockCheck value matches 1.. if score #MarkerMotion.Temporary1 value matches 1.. run function ex3:general/marker_motion/bounce/

        # 接触してたらon_blockタグ付与
            execute if score #MarkerMotion.BlockCheck value matches 1.. run tag @s add MarkerMotion.on_block
            execute if score #MarkerMotion.BlockCheck value matches 3..4 run tag @s add MarkerMotion.on_block.y
            execute if score #MarkerMotion.BlockCheck value matches 1.. unless score #MarkerMotion.BlockCheck value matches 3..4 run tag @s add MarkerMotion.on_block.wall

        # 接触方向に対して固定位置に移動
            execute if score #MarkerMotion.BlockCheck value matches 1 run tag @s add MarkerMotion.on_block.east
            execute if score #MarkerMotion.BlockCheck value matches 2 run tag @s add MarkerMotion.on_block.west
            execute if score #MarkerMotion.BlockCheck value matches 3 run tag @s add MarkerMotion.on_block.up
            execute if score #MarkerMotion.BlockCheck value matches 4 run tag @s add MarkerMotion.on_block.down
            execute if score #MarkerMotion.BlockCheck value matches 5 run tag @s add MarkerMotion.on_block.south
            execute if score #MarkerMotion.BlockCheck value matches 6 run tag @s add MarkerMotion.on_block.north

# スピード減少
    # constant
        execute if score #MarkerMotion.SpeedLoss value matches 1.. unless data storage neac: marker_motion.speed.loss{type:"multiply"} store result storage neac: marker_motion.speed.amount int 1 run scoreboard players operation #MarkerMotion.Speed value -= #MarkerMotion.SpeedLoss value
    # multiply
        execute if score #MarkerMotion.SpeedLoss value matches 0..999 if data storage neac: marker_motion.speed.loss{type:"multiply"} store result storage neac: marker_motion.speed.amount int 0.001 run scoreboard players operation #MarkerMotion.Speed value *= #MarkerMotion.SpeedLoss value
    
    execute if score #MarkerMotion.Speed value matches ..0 unless data storage neac: marker_motion.bounce{g:1b} run tag @s add MarkerMotion.speed.0

# タグ付与
    execute if entity @s[tag=MarkerMotion.stopwith.hit] run tag @s add MarkerMotion.stop
    execute if entity @s[tag=MarkerMotion.speed.0] run tag @s add MarkerMotion.stop
    execute if entity @s[tag=MarkerMotion.on_block] run tag @s add MarkerMotion.stop

# スコアリセット
    scoreboard players reset #MarkerMotion.Pos1
    scoreboard players reset #MarkerMotion.Pos2
    scoreboard players reset #MarkerMotion.Pos3
    scoreboard players reset #MarkerMotion.Motion1
    scoreboard players reset #MarkerMotion.Motion2
    scoreboard players reset #MarkerMotion.Motion3
    scoreboard players reset #MarkerMotion.Speed
    scoreboard players reset #MarkerMotion.SpeedLoss
    scoreboard players reset #MarkerMotion.Gravity
    scoreboard players reset #MarkerMotion.GravitySum
    scoreboard players reset #MarkerMotion.BlockCheck
    scoreboard players reset #MarkerMotion.Temporary1
    scoreboard players reset #MarkerMotion.Bounce.CG.YVec.Temporary1

# ストレージデータを自身に返して初期化
    data modify entity @s data.MarkerMotion set from storage neac: marker_motion
    data remove storage neac: marker_motion
    data remove storage neac: marker_motion_pos

# 後処理
    kill @e[tag=MarkerMotion.this.All]