#メニューを開くアニメーション
scoreboard players add #menu_open_ticker value 1
execute if score #menu_open_ticker value matches 1 run scoreboard players add #menu_open_animation value 1
execute if score #menu_open_ticker value matches 2.. run scoreboard players set #menu_open_ticker value 0


execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 1 run fill ~-8 ~3 ~ ~8 ~-1 ~ minecraft:air
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 1 run setblock ~ ~ ~ minecraft:birch_wall_sign
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 1 run setblock ~ ~ ~ minecraft:birch_wall_sign destroy




execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 2 run setblock ~1 ~ ~ minecraft:birch_wall_sign
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 2 run setblock ~1 ~ ~ minecraft:birch_wall_sign destroy
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 2 run setblock ~-1 ~ ~ minecraft:birch_wall_sign
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 2 run setblock ~-1 ~ ~ minecraft:birch_wall_sign destroy


execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 3 run setblock ~2 ~ ~ minecraft:birch_wall_sign
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 3 run setblock ~2 ~ ~ minecraft:birch_wall_sign destroy
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 3 run setblock ~-2 ~ ~ minecraft:birch_wall_sign
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 3 run setblock ~-2 ~ ~ minecraft:birch_wall_sign destroy


execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 4 run setblock ~3 ~ ~ minecraft:birch_wall_sign
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 4 run setblock ~3 ~ ~ minecraft:birch_wall_sign destroy
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 4 run setblock ~-3 ~ ~ minecraft:birch_wall_sign
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 4 run setblock ~-3 ~ ~ minecraft:birch_wall_sign destroy


execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 5 run setblock ~4 ~ ~ minecraft:birch_wall_sign
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 5 run setblock ~4 ~ ~ minecraft:birch_wall_sign destroy
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 5 run setblock ~-4 ~ ~ minecraft:birch_wall_sign
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 5 run setblock ~-4 ~ ~ minecraft:birch_wall_sign destroy


execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 6 run setblock ~5 ~ ~ minecraft:birch_wall_sign
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 6 run setblock ~5 ~ ~ minecraft:birch_wall_sign destroy
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 6 run setblock ~-5 ~ ~ minecraft:birch_wall_sign
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 6 run setblock ~-5 ~ ~ minecraft:birch_wall_sign destroy






execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 9.. run function ex3:lobby/menu/opened
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 9.. run scoreboard players reset #menu_open value
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 9.. run scoreboard players set #menu_opened value 1
execute if score #menu_open_ticker value matches 1 if score #menu_open_animation value matches 9.. run scoreboard players set #menu_open_animation_end value 1
execute if score #menu_open_animation_end value matches 1 run scoreboard players reset #menu_open_animation
execute if score #menu_open_animation_end value matches 1 run scoreboard players reset #menu_open_ticker
execute if score #menu_open_animation_end value matches 1 run scoreboard players reset #menu_open_animation_end




