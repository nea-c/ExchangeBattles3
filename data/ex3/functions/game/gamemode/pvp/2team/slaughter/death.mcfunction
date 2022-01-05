#スローター処理
execute if entity @a[tag=!death_player,tag=slain_by,limit=1] as @a[tag=!death_player,tag=slain_by] unless score @s team_number = #- team_number run function ex3:game/gamemode/pvp/2team/slaughter/point/add
execute unless entity @a[tag=!death_player,tag=slain_by,limit=1] run function ex3:game/gamemode/pvp/2team/slaughter/point/remove