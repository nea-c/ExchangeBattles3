#チーム看板削除
fill ~9 ~ ~-9 ~-9 ~ ~-8 minecraft:air replace minecraft:oak_wall_sign
playsound minecraft:block.beacon.deactivate master @a ~9 ~ ~-9 1 1.7
playsound minecraft:block.beacon.deactivate master @a ~-8 ~ ~-9 1 1.7
particle minecraft:instant_effect ~8.5 ~ ~-8.5 0.5 5 0.5 0.00001 50 force
particle minecraft:instant_effect ~-8.5 ~ ~-8.5 0.5 5 0.5 0.00001 50 force
