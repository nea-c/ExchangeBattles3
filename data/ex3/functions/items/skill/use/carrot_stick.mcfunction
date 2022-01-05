

#ボム起爆装置
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:130010}}}] run function ex3:items/skill/0010/auxiliary/use

#アロースプリンクラーセルフ展開
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:130015}}}] run function ex3:items/skill/0015/auxiliary/use

#薙ぎ払い
execute if score #has_skill value matches 32 if score #has_skill_ct value matches 0 run function ex3:items/skill/0032/use