#> ex3:general/marker_motion/bounce/conside_gravity
# 重力値に応じて跳ねる量を変更する処理
# @within
#   function ex3:general/marker_motion/bounce/

# 次tickの飛行方向のYベクトル取得
    execute positioned 0.0 0.0 0.0 rotated as @s run tp @e[tag=MarkerMotion.this,limit=1] ^ ^ ^1
    execute store result score #MarkerMotion.Bounce.CG.YVec value run data get entity @e[tag=MarkerMotion.this,limit=1] Pos[1] 10000
    scoreboard players operation #MarkerMotion.Bounce.CG.YVec value *= #MarkerMotion.Speed value

# 今のYベクトル(重力)を取得して次tickのベクトルを引く
    scoreboard players operation #MarkerMotion.Bounce.CG.Temporary2 value = #MarkerMotion.Bounce.CG.YVec value
    # ブロック下面
        execute if score #MarkerMotion.BlockCheck value matches 3 if score #MarkerMotion.Bounce.CG.Temporary2 value matches 1.. run scoreboard players operation #MarkerMotion.Bounce.CG.Temporary2 value *= #-1 value
    # ブロック上面
        execute if score #MarkerMotion.BlockCheck value matches 4 if score #MarkerMotion.Bounce.CG.Temporary2 value matches ..-1 run scoreboard players operation #MarkerMotion.Bounce.CG.Temporary2 value *= #-1 value

    # 今のYベクトル(#MarkerMotion.Bounce.CG.YVec.Temporary1 value)を退避
        scoreboard players operation #MarkerMotion.Bounce.CG.Temporary1 value = #MarkerMotion.Bounce.CG.YVec.Temporary1 value
    # 退避スコアを使って計算
        scoreboard players operation #MarkerMotion.Bounce.CG.Temporary1 value += #MarkerMotion.Bounce.CG.Temporary2 value

        # 前ブロックに跳ねたときのYベクトルの記憶を呼ぶ
            execute if data storage neac: marker_motion.GravitySumTemp store result score #MarkerMotion.Bounce.CG.YVec.Before value run data get storage neac: marker_motion.GravitySumTemp 0.00988
            # 同じ数値を持つスコアを作る
                execute if data storage neac: marker_motion.GravitySumTemp store result score #MarkerMotion.Bounce.CG.YVec.Before value run scoreboard players operation #MarkerMotion.Bounce.CG.YVec.Before.copy value = #MarkerMotion.Bounce.CG.YVec.Before value
            # 上で作った同じスコアのやつと自身で同じ量の正負の誤差をつける
                execute if data storage neac: marker_motion.GravitySumTemp store result score #MarkerMotion.Bounce.CG.YVec.Before value run scoreboard players add #MarkerMotion.Bounce.CG.YVec.Before.copy value 125
                execute if data storage neac: marker_motion.GravitySumTemp store result score #MarkerMotion.Bounce.CG.YVec.Before value run scoreboard players remove #MarkerMotion.Bounce.CG.YVec.Before value 125
        # data.MarkerMotion.bounce.eが1のとき値を直接入れる
            execute unless score #MarkerMotion.Bounce.e value matches 1000 store result storage neac: marker_motion.GravitySum int 1 run scoreboard players get #MarkerMotion.Bounce.CG.Temporary1 value
        # data.MarkerMotion.bounce.eが1以外の場合は計算して代入する
            execute if score #MarkerMotion.Bounce.e value matches 0..999 store result storage neac: marker_motion.GravitySum int 0.001 run scoreboard players operation #MarkerMotion.Bounce.CG.Temporary1 value *= #MarkerMotion.Bounce.e value

        # data.MarkerMotion.GravitySumをdata.GravitySumTempに保存
            data modify storage neac: marker_motion.GravitySumTemp set from storage neac: marker_motion.GravitySum
        # 保存したdata.MarkerMotion.GravitySumTempを取得
            execute store result score #MarkerMotion.Bounce.CG.GravitySum value run data get storage neac: marker_motion.GravitySumTemp 0.00988
            # 取得した値と誤差を作ったスコアで比較し、前回跳ねたときと誤差が少なければ止まったとみなす
            execute if score #MarkerMotion.Speed value matches ..0 if score #MarkerMotion.Bounce.CG.YVec.Before value <= #MarkerMotion.Bounce.CG.GravitySum value if score #MarkerMotion.Bounce.CG.GravitySum value <= #MarkerMotion.Bounce.CG.YVec.Before.copy value at @s run tag @s add MarkerMotion.speed.0.bounce

# タグをつける
    execute if entity @s[tag=MarkerMotion.speed.0.bounce] run tag @s add MarkerMotion.speed.0

# スコアリセット
    scoreboard players reset #MarkerMotion.Bounce.CG.YVec
    scoreboard players reset #MarkerMotion.Bounce.CG.YVec.Before
    scoreboard players reset #MarkerMotion.Bounce.CG.YVec.Before.copy
    scoreboard players reset #MarkerMotion.Bounce.CG.GravitySum
    scoreboard players reset #MarkerMotion.Bounce.CG.Temporary1
    scoreboard players reset #MarkerMotion.Bounce.CG.Temporary2