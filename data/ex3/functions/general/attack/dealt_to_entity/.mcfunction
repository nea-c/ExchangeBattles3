
tag @s add this

execute as @e[type=!#ex3:not_mobs,nbt=!{HurtTime:0s}] run function ex3:general/attack/dealt_to_entity/filters/15

tag @s remove this

advancement revoke @s only ex3:general/attack/dealt/to_entity