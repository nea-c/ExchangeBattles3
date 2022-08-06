#> ex3:general/marker_motion/
# marker_motion
# @public


execute unless entity @s[type=marker] run tellraw @a [{"text":"実行者がMarkerではないため実行できません。","color":"#ff0000"}]
execute if entity @s[type=marker,tag=!MarkerMotion.stop] run function ex3:general/marker_motion/main
