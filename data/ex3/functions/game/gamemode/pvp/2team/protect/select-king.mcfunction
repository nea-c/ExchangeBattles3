#プロテクト処理
tag @r[team=emerald,scores={max_health=0..}] add king
tag @r[team=purpur,scores={max_health=0..}] add king
tellraw @a ["",{"text":"------------------------------","color":"aqua"},{"text":"\n[システム] "},{"text":"エメラルドチーム","bold":true,"color":"green"},{"text":"は"},{"selector":"@a[team=emerald,tag=king]"},{"text":"、\n[システム] "},{"text":"プルプァチーム","bold":true,"color":"light_purple"},{"text":"は"},{"selector":"@a[team=purpur,tag=king]"},{"text":"がキングに選ばれました"},{"text":"\n------------------------------","color":"aqua"}]

scoreboard players operation #emerald number = @a[team=emerald,tag=king] number
scoreboard players operation #purpur number = @a[team=purpur,tag=king] number


tag @a remove king
