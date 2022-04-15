execute at @s run playsound minecraft:aot.shoot player @a[distance=..8] ~ ~ ~ 1 1
#PETITION UNCOMMENT
title @s actionbar {"text":"<   >","bold":true,"color":"gold"}


# SET ID PLAYER
execute store result score @s id_player run data get entity @s UUID[0]
execute store result score @s push_1 run data get entity @s UUID[0]
execute store result score @s push_6 run data get entity @s UUID[0]

# Summon 3D derecha
summon minecraft:bat ^-.3 ^1 ^-.3 {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["3Dhook_1"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}]}

# Summon gancho derecha
summon snowball ^-1 ^.2 ^3 {Tags:["motion_1","spball"],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"explosion",NoGravity:1b,Radius:0f,Duration:19999980,Tags:["hook_1"]}],Item:{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:1}}}
summon bat ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["rope_1"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}]}

#SET ID RIGHT
execute store result score @e[tag=hook_1,sort=nearest,limit=1] id_hook_1 run data get entity @s UUID[0]
execute store result score @e[tag=3Dhook_1,sort=nearest,limit=1] id_3D_1 run data get entity @s UUID[0]

# Atar bats
data modify entity @e[tag=rope_1,type=bat,sort=nearest,limit=1] Leash set from entity @e[tag=3Dhook_1,type=bat,sort=nearest,limit=1] {}


# Summon 3D izquierda
summon bat ^.3 ^1 ^-.3 {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["3Dhook_6"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}]}

# Summon gancho izquierda
summon snowball ^1 ^.2 ^3 {Tags:["motion_6","spball"],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"explosion",NoGravity:1b,Radius:0f,Duration:19999980,Tags:["hook_6"]}],Item:{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:1}}}
summon bat ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["rope_6"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}]}

#SET ID LEFT
execute store result score @e[tag=hook_6,sort=nearest,limit=1] id_hook_6 run data get entity @s UUID[0]
execute store result score @e[tag=3Dhook_6,sort=nearest,limit=1] id_3D_6 run data get entity @s UUID[0]

# Atar bats
data modify entity @e[tag=rope_6,type=bat,sort=nearest,limit=1] UUID set from entity @e[tag=3Dhook_6,type=bat,sort=nearest,limit=1] {}
data modify entity @e[tag=rope_6,type=bat,sort=nearest,limit=1] Leash set from entity @e[tag=3Dhook_6,type=bat,sort=nearest,limit=1] {}

# Summmon boat

# Throwed
scoreboard players set @s man_land 1
# Tiempo para volver a usar
scoreboard players set @s man_cool 14

tag @s add throw

# Reset escaneo
scoreboard players set @s[scores={man_gear=1..}] man_gear 0