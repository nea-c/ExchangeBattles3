#スキル使用処理
execute if entity @a[gamemode=spectator,scores={team_number=1..,max_health=0..},limit=1] as @a[gamemode=spectator,scores={team_number=1..,max_health=0..}] at @s run function ex3:items/skill/use/spectate


#見切り
execute if entity @e[tag=skill1-time,limit=1] as @e[tag=skill1-time] run function ex3:items/skill/0001/proc


#メルトショック
execute if entity @e[tag=skill2-meltshock,limit=1] as @e[tag=skill2-meltshock] run function ex3:items/skill/0002/hit/sus/1

#フォースガーナー
execute if entity @e[tag=skill4-time,limit=1] as @e[tag=skill4-time] run function ex3:items/skill/0004/proc



#ゆきだるま伯爵
execute if entity @e[tag=earl,limit=1] as @e[tag=earl] at @s run function ex3:items/skill/0005/proc



#レリーヴストーン
execute if entity @e[tag=skill6-chase-time,limit=1] as @e[tag=skill6-chase-time] at @s run function ex3:items/skill/0006/chase/proc
execute if entity @e[tag=skill6-resistance-time,limit=1] as @e[tag=skill6-resistance-time] run function ex3:items/skill/0006/resistance/proc



#ボム
execute if entity @e[tag=skill10-bomb,limit=1] as @e[tag=skill10-bomb] at @s run function ex3:items/skill/0010/fuse_timer



#灯火
execute if entity @e[tag=fire,limit=1] as @e[tag=fire] at @s run function ex3:items/skill/0011/proc



#カウンタースパーク
execute if entity @e[tag=skill12-time,limit=1] as @e[tag=skill12-time] run function ex3:items/skill/0012/proc




#アロースプリンクラー
execute if entity @e[tag=arrow_sprinkler,limit=1] as @e[tag=arrow_sprinkler] at @s run function ex3:items/skill/0015/shot
execute if entity @e[tag=arrow_sprinkler_aec,limit=1] as @e[tag=arrow_sprinkler_aec] at @s run function ex3:items/skill/0015/deployed



#パーフォレイトショット
execute if entity @e[tag=skill16-bullet,limit=1] as @e[tag=skill16-bullet] at @s run function ex3:items/skill/0016/proc



#偵察
execute if entity @e[tag=skill17-stand,limit=1] as @e[tag=skill17-stand] at @s run function ex3:items/skill/0017/stand



#グライディング
execute if entity @e[tag=skill18-time,limit=1] as @e[tag=skill18-time] at @s run function ex3:items/skill/0018/proc



#ウォール
execute if entity @e[tag=wall,limit=1] as @e[tag=wall] at @s run function ex3:items/skill/0019/proc



#魂の呼び声
execute if entity @e[tag=soul_curse,limit=1] as @e[tag=soul_curse] at @s run function ex3:items/skill/0022/proc


#泣きの一回
execute if entity @e[tag=skill24-time,limit=1] as @e[tag=skill24-time] run function ex3:items/skill/0024/proc


#呪縛
execute if entity @e[tag=skill25-time,limit=1] as @e[tag=skill25-time] run function ex3:items/skill/0025/proc


#ダッシュブースト
execute if entity @e[tag=skill26-boost-time,limit=1] as @e[tag=skill26-boost-time] run function ex3:items/skill/0026/proc
#アマスタkill用
execute if entity @e[tag=now-skill26-count,limit=1] run tag @e[tag=now-skill26-count] remove now-skill26-count
execute if entity @e[tag=skill26-count,tag=!skill26-counted,limit=1] run kill @e[tag=skill26-count,tag=!skill26-counted]
execute if entity @e[tag=skill26-count,tag=skill26-counted,limit=1] run tag @e[tag=skill26-counted] remove skill26-counted


#ジャンプバック
execute if entity @e[tag=skill27-back,limit=1] as @e[tag=skill27-back] at @s run function ex3:items/skill/0027/proc


#援護要請
execute if entity @e[tag=skill28-banner,limit=1] as @e[tag=skill28-banner] at @s positioned ~ ~1.8 ~ positioned ^ ^ ^-0.25 run function ex3:items/skill/0028/proc
execute if entity @a[tag=skill28-same-team,limit=1] as @a[tag=skill28-same-team] at @s run function ex3:items/skill/0028/player
execute if entity @a[tag=skill28-same-team,limit=1] as @a[tag=skill28-same-team] run tag @s remove skill28-same-team


#ヴァージコラプス
execute if entity @e[tag=skill29-ball,limit=1] as @e[tag=skill29-ball] at @s run function ex3:items/skill/0029/proc


#ルミエールフラワー
execute if entity @e[tag=skill30-shot,limit=1] as @e[tag=skill30-shot] at @s run function ex3:items/skill/0030/proc


#ステルス
execute if entity @e[tag=skill31-time,limit=1] as @e[tag=skill31-time] at @s run function ex3:items/skill/0031/proc
execute if entity @a[tag=skill31-buff,limit=1] as @a[tag=skill31-buff] at @s run function ex3:items/skill/0031/tick-p


#薙ぎ払い
execute if entity @e[tag=skill32-sword,limit=1] as @e[tag=skill32-sword] at @s run function ex3:items/skill/0032/proc


#アトランダムアロー
execute if entity @e[tag=skill33-time,limit=1] as @e[tag=skill33-time] at @s run function ex3:items/skill/0033/proc


#グレネード
execute if entity @e[tag=skill34-grenade,limit=1] as @e[tag=skill34-grenade] at @s run function ex3:items/skill/0034/proc


#固定砲台
execute if entity @a[tag=skill35-now,limit=1] as @a[tag=skill35-now] run tag @s remove skill35-now
execute if entity @e[tag=skill35-time,limit=1] as @e[tag=skill35-time] at @s run function ex3:items/skill/0035/proc


#即時孵化
execute if entity @e[tag=skill36-chicken,limit=1] as @e[tag=skill36-chicken] at @s run function ex3:items/skill/0036/proc