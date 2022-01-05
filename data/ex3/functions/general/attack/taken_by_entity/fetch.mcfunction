#> ex3:general/attack/taken_by_entity/fetch
#
# 多分このfunctionの実行者は攻撃したEntityであるはず
#
# @within function ex3:general/attack/dealt_to_entity/filters/0

# 軽量にセレクターを利用する用のtag
    #tag @s add AttackedEntity
# 紐づけ用スコア
#say @a[tag=this,limit=1]
execute unless score @s number matches 1.. run scoreboard players operation @a[tag=this,limit=1] hurt_by = @s mob_number
execute unless score @s number matches 1.. run scoreboard players operation @a[tag=this,limit=1] hurt_by *= #-1 value
    #scoreboard players operation @a[tag=this,limit=1] AttackedEntity = @a[tag=this,limit=1] number