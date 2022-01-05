#tag=it,limit=1,sort=nearestのdata.tmpUUIDに自身のUUIDを代入
data modify entity @e[tag=skill2_me-,limit=1] data.tmpUUID set from entity @s UUID
#tag=it,limit=1,sort=nearestのdata.tmpUUIDがdata.targetと一致するかどうかを検知
execute as @e[tag=skill2_me-,limit=1] store success score @s value2 run data modify entity @s data.tmpUUID set from entity @s data.target
#一致していた場合、自身に成功タグを付与して全エンティティから検索用タグを削除
execute if score @e[tag=skill2_me-,limit=1] value2 matches 0 run tag @s add owner
