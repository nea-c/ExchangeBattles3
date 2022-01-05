#チーム看板設置
fill ~9 ~ ~-9 ~-9 ~ ~-8 minecraft:air replace minecraft:oak_wall_sign
playsound minecraft:block.beacon.activate master @a ~9 ~ ~-9 1 1.7
playsound minecraft:block.beacon.activate master @a ~-8 ~ ~-9 1 1.7
particle minecraft:firework ~8.5 ~ ~-8.5 0.5 5 0.5 0.1 50 force
particle minecraft:firework ~-8.5 ~ ~-8.5 0.5 5 0.5 0.1 50 force

function ex3:lobby/team_signs
