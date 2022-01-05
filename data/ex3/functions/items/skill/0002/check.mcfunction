#tag=it,limit=1,sort=nearestのdata.tmpUUIDに自身のUUIDを代入
data modify entity @s data.tmpUUID set from entity @e[tag=skill2_me-,limit=1] UUID
#tag=it,limit=1,sort=nearestのdata.tmpUUIDがdata.targetと一致するかどうかを検知
execute as @s store success score @s value2 run data modify entity @s data.tmpUUID set from entity @s data.target
#一致していた場合、自身に成功タグを付与して全エンティティから検索用タグを削除
execute if score @s value2 matches 0 run tag @e[tag=skill2_me-,limit=1] add skill2-melt_now
