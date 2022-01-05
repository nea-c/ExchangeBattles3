
#ジャンプ50000回進捗
function ex3:achievements/jump_count


#レリーヴストーン
execute if entity @s[tag=!skill6-used] if score #has_skill value matches 6 if score #has_skill_ct value matches 0 run function ex3:items/skill/0006/use

#ハイジャンプ
execute if entity @s[predicate=ex3:general/sneak,scores={skill1=8,skill1_ct=0,jump=1..}] run function ex3:items/skill/0008/use
execute if entity @s[predicate=ex3:general/sneak,scores={skill2=8,skill2_ct=0,jump=1..}] run function ex3:items/skill/0008/use
execute if entity @s[predicate=ex3:general/sneak,scores={skill3=8,skill3_ct=0,jump=1..}] run function ex3:items/skill/0008/use


#ショートテレポート
execute if score #has_skill value matches 14 if score #has_skill_ct value matches 0 run function ex3:items/skill/0014/use


#偵察
execute if score #has_skill value matches 17 if score #has_skill_ct value matches 0 run function ex3:items/skill/0017/use


