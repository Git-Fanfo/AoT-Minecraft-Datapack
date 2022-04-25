effect give @e[type=!item,distance=..5,sort=nearest,limit=3] instant_damage 1 1 true
#summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:1b,Fuse:0,Tags:["motion"]}
particle minecraft:block dirt ~ ~ ~ 0 0 0 5 10 force
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 .01 2
execute as @s[tag=!duration] run data modify entity @s Duration set value 10
tag @s add duration