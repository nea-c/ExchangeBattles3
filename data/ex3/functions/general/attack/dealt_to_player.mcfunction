tag @s add phe
scoreboard players operation @a[tag=ehp] hurt_by = @s number

tag @s remove phe
tag @a[tag=ehp] remove ehp
advancement revoke @s only ex3:general/attack/dealt/to_player