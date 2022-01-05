execute if score #no_team_change value matches 1 run function ex3:lobby/team_change/failed
execute if entity @s[team=purpur] unless score #no_team_change value matches 1 run function ex3:lobby/team_change/already
execute if entity @s[team=!purpur] unless score #no_team_change value matches 1 run function ex3:lobby/team_change/purpur/execution_complete