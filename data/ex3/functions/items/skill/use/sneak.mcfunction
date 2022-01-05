

#見切り
execute if entity @s[scores={skill1=1,skill1_ct=0}] run function ex3:items/skill/0001/use
execute if entity @s[scores={skill2=1,skill2_ct=0}] run function ex3:items/skill/0001/use
execute if entity @s[scores={skill3=1,skill3_ct=0}] run function ex3:items/skill/0001/use



#メルトショック
execute if score #has_skill value matches 2 if score #has_skill_ct value matches 0 run function ex3:items/skill/0002/use



#フォースガーナー
execute if score #has_skill value matches 4 if score #has_skill_ct value matches 0 run function ex3:items/skill/0004/use



#グロウレジスタンス
execute if score #has_skill value matches 5 if score #has_skill_ct value matches 0 run function ex3:items/skill/0005/use



#レリーヴストーン
execute if entity @s[tag=!skill6-used] if score #has_skill value matches 6 if score #has_skill_ct value matches 0 run function ex3:items/skill/0006/use



#フォールディセラレーション
execute if score #has_skill value matches 9 if score #has_skill_ct value matches 0 run function ex3:items/skill/0009/use



#ボム
execute if score #has_skill value matches 10 if score #has_skill_ct value matches 0 run function ex3:items/skill/0010/use


#灯火
execute if score #has_skill value matches 11 if score #has_skill_ct value matches 0 run function ex3:items/skill/0011/use



#カウンタースパーク
execute if entity @s[scores={skill1=12,skill1_ct=0}] run function ex3:items/skill/0012/use
execute if entity @s[scores={skill2=12,skill2_ct=0}] run function ex3:items/skill/0012/use
execute if entity @s[scores={skill3=12,skill3_ct=0}] run function ex3:items/skill/0012/use



#ヒール
execute if score #has_skill value matches 13 if score #has_skill_ct value matches 0 run function ex3:items/skill/0013/use



#パーフォレイトショット
execute if score #has_skill value matches 16 if score #has_skill_ct value matches 0 run function ex3:items/skill/0016/use



#グライディング
execute if score #has_skill value matches 18 if score #has_skill_ct value matches 0 run function ex3:items/skill/0018/use_check



#ウォール
execute if score #has_skill value matches 19 if score #has_skill_ct value matches 0 run function ex3:items/skill/0019/use




#ガードフォート
execute if score #has_skill value matches 21 if score #has_skill_ct value matches 0 run function ex3:items/skill/0021/use


#呪縛
execute if score #has_skill value matches 25 if score #has_skill_ct value matches 0 run function ex3:items/skill/0025/use


#ジャンプバック
execute if entity @s[scores={skill1=27,skill1_ct=0}] run function ex3:items/skill/0027/use
execute if entity @s[scores={skill2=27,skill2_ct=0}] run function ex3:items/skill/0027/use
execute if entity @s[scores={skill3=27,skill3_ct=0}] run function ex3:items/skill/0027/use


#援護要請
execute if score #has_skill value matches 28 if score #has_skill_ct value matches 0 run function ex3:items/skill/0028/use


#ルミエールフラワー
execute if score #has_skill value matches 30 if score #has_skill_ct value matches 0 run function ex3:items/skill/0030/use


#ステルス
execute if score #has_skill value matches 31 if score #has_skill_ct value matches 0 run function ex3:items/skill/0031/use


#即時孵化
execute if score #has_skill value matches 36 if score #has_skill_ct value matches 0 run function ex3:items/skill/0036/use