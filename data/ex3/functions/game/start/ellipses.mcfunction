#ロード


scoreboard players add #ellipse value 1

execute if score #ellipse value matches 0 run title @a subtitle {"text":"◻◻◻◻◻◻◻◻◻◻","color":"green"}
execute if score #ellipse value matches 1 run title @a subtitle {"text":"◼◻◻◻◻◻◻◻◻◻","color":"green"}
execute if score #ellipse value matches 2 run title @a subtitle {"text":"◼◼◻◻◻◻◻◻◻◻","color":"green"}
execute if score #ellipse value matches 3 run title @a subtitle {"text":"◼◼◼◻◻◻◻◻◻◻","color":"green"}
execute if score #ellipse value matches 4 run title @a subtitle {"text":"◼◼◼◼◻◻◻◻◻◻","color":"green"}
execute if score #ellipse value matches 5 run title @a subtitle {"text":"◼◼◼◼◼◻◻◻◻◻","color":"green"}
execute if score #ellipse value matches 6 run title @a subtitle {"text":"◼◼◼◼◼◼◻◻◻◻","color":"green"}
execute if score #ellipse value matches 7 run title @a subtitle {"text":"◼◼◼◼◼◼◼◻◻◻","color":"green"}
execute if score #ellipse value matches 8 run title @a subtitle {"text":"◼◼◼◼◼◼◼◼◻◻","color":"green"}
execute if score #ellipse value matches 9 run title @a subtitle {"text":"◼◼◼◼◼◼◼◼◼◻","color":"green"}
execute if score #ellipse value matches 10 run title @a subtitle {"text":"◼◼◼◼◼◼◼◼◼◼","color":"green"}


execute if score #ellipse value matches 11.. run title @a subtitle ""
execute if score #ellipse value matches 11.. run title @a title ""
execute if score #ellipse value matches 11.. run scoreboard players reset #ellipse

execute if score #ellipse value matches 0.. run schedule function ex3:game/start/ellipses 8t append
execute unless score #ellipse value matches 0.. run function ex3:game/start/tp-rule