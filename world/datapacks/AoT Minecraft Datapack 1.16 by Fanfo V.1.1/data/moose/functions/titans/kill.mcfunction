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
# PETITION
execute as @s[tag=mob1] run scoreboard players add @p[scores={man_atk=1..},distance=0..6] Titan_Kill_Count 3
execute as @s[tag=mob1] run execute as @p[scores={man_atk=1..},distance=0..6] run tellraw @a ["",{"selector":"@s","color":"aqua"},{"text":" has made","color":"light_purple"},{"text":" 3 ","color":"aqua"},{"text":"points!","color":"yellow"}]
execute as @s[tag=mob2] run scoreboard players add @p[scores={man_atk=1..},distance=0..6] Titan_Kill_Count 1
execute as @s[tag=mob2] run execute as @p[scores={man_atk=1..},distance=0..6] run tellraw @a ["",{"selector":"@s","color":"aqua"},{"text":" has made","color":"light_purple"},{"text":" 1 ","color":"aqua"},{"text":"point!","color":"yellow"}]
execute as @s[tag=mob3] run scoreboard players add @p[scores={man_atk=1..},distance=0..6] Titan_Kill_Count 3
execute as @s[tag=mob3] run execute as @p[scores={man_atk=1..},distance=0..6] run tellraw @a ["",{"selector":"@s","color":"aqua"},{"text":" has made","color":"light_purple"},{"text":" 3 ","color":"aqua"},{"text":"points!","color":"yellow"}]
execute as @s[tag=mob4] run scoreboard players add @p[scores={man_atk=1..},distance=0..6] Titan_Kill_Count 2
execute as @s[tag=mob4] run execute as @p[scores={man_atk=1..},distance=0..6] run tellraw @a ["",{"selector":"@s","color":"aqua"},{"text":" has made","color":"light_purple"},{"text":" 2 ","color":"aqua"},{"text":"points!","color":"yellow"}]

# DIstance hasta el jugador más cercano
execute as @p[scores={man_atk=1..},distance=0..6] run function moose:mech_gear/blades/replace_aux