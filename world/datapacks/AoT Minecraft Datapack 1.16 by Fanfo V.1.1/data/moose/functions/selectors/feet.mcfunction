#Rotar feet

execute at @s run data modify entity @e[type=minecraft:slime,tag=legs,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
execute at @s run data modify entity @e[type=minecraft:armor_stand,tag=body,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
execute at @s run data modify entity @e[type=minecraft:slime,tag=neck,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]

# evitar entrar en casas
execute at @s unless block ^ ^3 ^2.5 air run execute run summon creeper ^ ^1.5 ^2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Fuse:0,Tags:["motion"],CustomName:'{"text":"Titan"}'}