execute at @s run particle minecraft:cloud ~ ~ ~ 2 2 2 .3 700
tp @e[type=zombie_villager,tag=feet,sort=nearest,limit=1] ~ -200 ~
#tp @e[type=slime,tag=legs,sort=nearest,limit=1] ~ -200 ~
#tp @e[type=armor_stand,tag=body,sort=nearest,limit=1] ~ -200 ~
#tp @e[type=slime,tag=neck,sort=nearest,limit=1] ~ -200 ~
#tp @e[type=spider,tag=kill,sort=nearest,limit=1] ~ -200 ~
execute as @s run kill @e[type=spider,tag=kill,sort=nearest,limit=1]
scoreboard players add @p Titan_Kill_Count 1

# DIstance hasta el jugador más cercano
execute at @s as @p[scores={man_atk=1}] run function moose:mech_gear/blades/replace_2
execute at @s as @p[scores={man_atk=2..}] run function moose:mech_gear/blades/replace_1