#2チーム分け
execute unless score #2team_random_toggle value matches 10.. run team join random @a[team=!]
execute unless score #2team_random_toggle value matches 10.. run scoreboard players add #2team_random_toggle value 10



execute if score #2team_random_toggle value matches 11 run team join emerald @r[team=random]

team join purpur @r[team=random]

execute if score #2team_random_toggle value matches 12 run team join emerald @r[team=random]

execute if entity @a[team=random,limit=1] run function ex3:game/team_random/2team



execute if score #2team_random_toggle value matches 11 run scoreboard players set #2team_random_toggle value 2
execute if score #2team_random_toggle value matches 12.. run scoreboard players set #2team_random_toggle value 1
