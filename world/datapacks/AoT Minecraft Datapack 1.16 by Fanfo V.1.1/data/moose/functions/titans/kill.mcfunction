execute at @s run particle minecraft:cloud ~ ~ ~ 2 2 2 .3 700

#say murio, nada de despawn
#tp @e[type=zombie_villager,tag=feet,sort=nearest,limit=1] ~ -200 ~
execute at @p run tp @e[type=zombie_villager,tag=feet,sort=nearest,limit=1] ~ -200 ~
execute at @p run tp @e[type=slime,tag=legs,sort=nearest,limit=1] ~ -200 ~
#tp @e[type=slime,tag=legs,sort=nearest,limit=1] ~ -200 ~
#tp @e[type=armor_stand,tag=body,sort=nearest,limit=1] ~ -200 ~

#execute at @s run kill @e[type=slime,tag=neck,sort=nearest,limit=1]

#tp @e[type=spider,tag=kill,sort=nearest,limit=1] ~ -200 ~
#execute at @s run tp @e[type=spider,distance=..4,tag=kill,sort=nearest,limit=1] ~ -200 ~

#kill @e[type=slime,tag=kill,sort=nearest,limit=1,distance=..15]

scoreboard players add @p[scores={man_atk=1..},distance=0..6] Titan_Kill_Count 1

# DIstance hasta el jugador más cercano
execute as @p[scores={man_atk=1..},distance=0..6] run function moose:mech_gear/blades/replace_aux