#初勝利
execute if entity @s[tag=win,advancements={ex3:achievements/win=false}] run advancement grant @s only ex3:achievements/win


#クラフターは眠らない
execute if entity @s[tag=win,advancements={ex3:achievements/time={morning=false}}] if score #setting_time value matches 1000 run advancement grant @s only ex3:achievements/time morning
execute if entity @s[tag=win,advancements={ex3:achievements/time={noon=false}}] if score #setting_time value matches 6000 run advancement grant @s only ex3:achievements/time noon
execute if entity @s[tag=win,advancements={ex3:achievements/time={evening=false}}] if score #setting_time value matches 13000 run advancement grant @s only ex3:achievements/time evening
execute if entity @s[tag=win,advancements={ex3:achievements/time={midnight=false}}] if score #setting_time value matches 18000 run advancement grant @s only ex3:achievements/time midnight


#ナーフの標的
execute if entity @s[tag=!win,advancements={ex3:achievements/too_much_win={10=false}}] run advancement revoke @s only ex3:achievements/too_much_win

execute if entity @s[tag=win,advancements={ex3:achievements/too_much_win={9=true,10=false}}] run advancement grant @s only ex3:achievements/too_much_win 10
execute if entity @s[tag=win,advancements={ex3:achievements/too_much_win={8=true,9=false}}] run advancement grant @s only ex3:achievements/too_much_win 9
execute if entity @s[tag=win,advancements={ex3:achievements/too_much_win={7=true,8=false}}] run advancement grant @s only ex3:achievements/too_much_win 8
execute if entity @s[tag=win,advancements={ex3:achievements/too_much_win={6=true,7=false}}] run advancement grant @s only ex3:achievements/too_much_win 7
execute if entity @s[tag=win,advancements={ex3:achievements/too_much_win={5=true,6=false}}] run advancement grant @s only ex3:achievements/too_much_win 6
execute if entity @s[tag=win,advancements={ex3:achievements/too_much_win={4=true,5=false}}] run advancement grant @s only ex3:achievements/too_much_win 5
execute if entity @s[tag=win,advancements={ex3:achievements/too_much_win={3=true,4=false}}] run advancement grant @s only ex3:achievements/too_much_win 4
execute if entity @s[tag=win,advancements={ex3:achievements/too_much_win={2=true,3=false}}] run advancement grant @s only ex3:achievements/too_much_win 3
execute if entity @s[tag=win,advancements={ex3:achievements/too_much_win={1=true,2=false}}] run advancement grant @s only ex3:achievements/too_much_win 2
execute if entity @s[tag=win,advancements={ex3:achievements/too_much_win={1=false}}] run advancement grant @s only ex3:achievements/too_much_win 1



#かんせんだいすき
execute if entity @s[tag=!spectator,advancements={ex3:achievements/watching={20=false}}] run advancement revoke @s only ex3:achievements/watching

execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={19=true,20=false}}] run advancement grant @s only ex3:achievements/watching 20
execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={18=true,19=false}}] run advancement grant @s only ex3:achievements/watching 19
execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={17=true,18=false}}] run advancement grant @s only ex3:achievements/watching 18
execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={16=true,17=false}}] run advancement grant @s only ex3:achievements/watching 17
execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={15=true,16=false}}] run advancement grant @s only ex3:achievements/watching 16
execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={14=true,15=false}}] run advancement grant @s only ex3:achievements/watching 15
execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={13=true,14=false}}] run advancement grant @s only ex3:achievements/watching 14
execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={12=true,13=false}}] run advancement grant @s only ex3:achievements/watching 13
execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={11=true,12=false}}] run advancement grant @s only ex3:achievements/watching 12
execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={10=true,11=false}}] run advancement grant @s only ex3:achievements/watching 11
execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={9=true,10=false}}] run advancement grant @s only ex3:achievements/watching 10
execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={8=true,9=false}}] run advancement grant @s only ex3:achievements/watching 9
execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={7=true,8=false}}] run advancement grant @s only ex3:achievements/watching 8
execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={6=true,7=false}}] run advancement grant @s only ex3:achievements/watching 7
execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={5=true,6=false}}] run advancement grant @s only ex3:achievements/watching 6
execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={4=true,5=false}}] run advancement grant @s only ex3:achievements/watching 5
execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={3=true,4=false}}] run advancement grant @s only ex3:achievements/watching 4
execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={2=true,3=false}}] run advancement grant @s only ex3:achievements/watching 3
execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={1=true,2=false}}] run advancement grant @s only ex3:achievements/watching 2
execute if entity @s[tag=spectator,advancements={ex3:achievements/watching={1=false}}] run advancement grant @s only ex3:achievements/watching 1