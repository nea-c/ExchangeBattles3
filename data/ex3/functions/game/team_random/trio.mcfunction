#三人組チームランダム(未実装)
execute unless score #trio_team_random_toggle value matches 1000.. run team join random @a[team=!]
execute unless score #trio_team_random_toggle value matches 1000.. run scoreboard players add #trio_team_random_toggle value 1000
scoreboard players add #trio_team_random_toggle value 1
execute if score #trio_team_random_toggle value matches 1001 run team join emerald @a[team=random,limit=3,sort=random]
execute if score #trio_team_random_toggle value matches 1002 run team join purpur @a[team=random,limit=3,sort=random]


execute if score #trio_team_random_toggle value matches 1002.. run scoreboard players set #trio_team_random_toggle value 1000
execute if entity @a[team=random,limit=1] run function ex3:game/team_random/trio



execute if score #trio_team_random_toggle value matches 1000.. run scoreboard players remove #trio_team_random_toggle value 1000
