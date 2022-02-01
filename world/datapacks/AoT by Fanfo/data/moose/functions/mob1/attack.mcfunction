#execute at @s run particle minecraft:smoke ~ ~ ~ 2 2 2 .3 700
# AS AT CUSTOM MOB1

# Sound and Particle
#scoreboard players set @s atk_cool 40

execute as @s[scores={atk_cool=70}] at @s run tag @e[tag=body,sort=nearest,limit=1] add attack
execute as @s[scores={atk_cool=70}] at @s run scoreboard players set @e[tag=body,sort=nearest,limit=1] atk 0

# Add tag wrap
# SET DISTANCE THE ALCANCE DEL ATAQUE
execute as @s[scores={atk_cool=69}] run tag @p add wrap
# Titan mira a player
execute as @s[scores={atk_cool=2..68}] as @e[tag=feet, sort=nearest, limit=1] run execute at @e[tag=feet, sort=nearest, limit=1] run tp @s ~ ~ ~ facing entity @p[tag=wrap] eyes

execute as @s[scores={atk_cool=67}] run execute as @e[tag=feet, sort=nearest, limit=1] at @e[tag=feet, sort=nearest, limit=1] run scoreboard players set @e[tag=feet, sort=nearest, limit=1] rot_cool 0

# Tp al frente
execute as @s[scores={atk_cool=67}] at @e[tag=feet, sort=nearest, limit=1] run tp @p[tag=wrap] ^ ^-1 ^4.5

#Velocidad de subida
execute as @s[scores={atk_cool=65}] if entity @p[tag=wrap] run summon area_effect_cloud ^ ^ ^5 {Particle:"explosion",NoGravity:1b,ReapplicationDelay:0,Radius:2f,Duration:15,Effects:[{Id:25b,Amplifier:13b,Duration:13,ShowParticles:0b}]}
execute as @s[scores={atk_cool=65}] if entity @p[tag=wrap] run summon area_effect_cloud ^ ^-1 ^5 {Particle:"explosion",NoGravity:1b,ReapplicationDelay:0,Radius:2f,Duration:15,Effects:[{Id:25b,Amplifier:13b,Duration:13,ShowParticles:0b}]}
execute as @s[scores={atk_cool=65}] if entity @p[tag=wrap] run summon area_effect_cloud ^ ^1 ^5 {Particle:"explosion",NoGravity:1b,ReapplicationDelay:0,Radius:2f,Duration:15,Effects:[{Id:25b,Amplifier:13b,Duration:13,ShowParticles:0b}]}

# Mirar titan
execute as @s[scores={atk_cool=2..65}] at @p[tag=wrap] run tp @p ~ ~ ~ facing entity @e[type=slime,sort=nearest, tag=neck,limit=1] feet

# Comer
#execute as @s[scores={atk_cool=48}] run effect give @p[tag=wrap] resistance 1 252 true
#execute as @s[scores={atk_cool=48}] at @p[tag=wrap] run summon creeper ^ ^ ^-3 {NoGravity:1b,Silent:1b,Invulnerable:1b,Fuse:0,Tags:["motion"]}

execute as @s[scores={atk_cool=37..48}] run execute as @p[tag=wrap] at @s run tp ^ ^ ^.15

execute as @s[scores={atk_cool=37..47}] run execute at @e[tag=neck] run effect give @p[distance=0..4,tag=wrap] instant_damage 999 5 true
execute as @s[scores={atk_cool=37..47}] at @e[tag=neck] run execute as @p[distance=0..4,tag=wrap] at @s run particle minecraft:block minecraft:redstone_block ^ ^1.5 ^.5 0 0 0 1 30
execute as @s[scores={atk_cool=37..47}] at @e[tag=neck] run execute as @p[distance=0..4,tag=wrap] at @s run particle minecraft:block minecraft:pink_terracotta ^ ^1.5 ^.5 0 0 0 1 20

#Quitar tag
execute as @s[scores={atk_cool=1..31}] run tag @a[tag=wrap] remove wrap
