data modify block 0 0 0 Items[0].tag.item set value 1

execute if score #slot_pos weapon matches 1 if score @s support matches 13 run function ex3:items/support/0013/buff
execute if score #slot_pos weapon matches 1 if score @s support matches 15 run function ex3:items/support/0015/buff

execute if score #slot_pos value matches 0 run loot replace entity @s container.0 1 mine 0 0 0 air{copy:1b}
execute if score #slot_pos value matches 1 run loot replace entity @s container.1 1 mine 0 0 0 air{copy:1b}
execute if score #slot_pos value matches 2 run loot replace entity @s container.2 1 mine 0 0 0 air{copy:1b}
execute if score #slot_pos value matches 3 run loot replace entity @s container.3 1 mine 0 0 0 air{copy:1b}
execute if score #slot_pos value matches 4 run loot replace entity @s container.4 1 mine 0 0 0 air{copy:1b}
execute if score #slot_pos value matches 5 run loot replace entity @s container.5 1 mine 0 0 0 air{copy:1b}
execute if score #slot_pos value matches 6 run loot replace entity @s container.6 1 mine 0 0 0 air{copy:1b}
execute if score #slot_pos value matches 7 run loot replace entity @s container.7 1 mine 0 0 0 air{copy:1b}
execute if score #slot_pos value matches 8 run loot replace entity @s container.8 1 mine 0 0 0 air{copy:1b}
execute if score #slot_pos value matches -106 run loot replace entity @s weapon.offhand 1 mine 0 0 0 air{copy:1b}

data remove block 0 0 0 Items[]

scoreboard players reset #slot_pos