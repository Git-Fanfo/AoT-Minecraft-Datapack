# Sound and Particle
execute as @s[scores={atk_cool=70}] at @s run tag @e[tag=body,sort=nearest,limit=1] add attack
execute as @s[scores={atk_cool=70}] at @s run scoreboard players set @e[tag=body,sort=nearest,limit=1] atk 0

# Add tag wrap
execute as @s[scores={atk_cool=70}] at @s run execute at @e[tag=mob1,tag=neck,sort=nearest,limit=1] if entity @a[distance=0..8] run tag @p add wrap
# Titan mira a player

# Mirar titan
#execute as @s[scores={atk_cool=2..70}] at @p[tag=wrap] run tp @p ~ ~ ~ facing entity @e[type=slime,sort=nearest, tag=neck,limit=1] eyes

#Velocidad de subida
execute as @s[scores={atk_cool=70}] at @s run effect give @p[tag=wrap] levitation 2 0 true
execute as @s[scores={atk_cool=63..70}] at @s run tp @p[tag=wrap] ^ ^ ^3.5
execute as @s[scores={atk_cool=56..62}] at @s run tp @p[tag=wrap] ^ ^1.5 ^3.5
execute as @s[scores={atk_cool=51..55}] at @s run tp @p[tag=wrap] ^ ^3 ^3.3
execute as @s[scores={atk_cool=47..50}] at @s run tp @p[tag=wrap] ^ ^5 ^3
execute as @s[scores={atk_cool=41..46}] at @s run tp @p[tag=wrap] ^ ^6.5 ^2.5
execute as @s[scores={atk_cool=1..40}] at @s run tp @p[tag=wrap] ^ ^7 ^1.6

#Para buscar un ejemplo busca DeathExample
# Comer
execute as @s[scores={atk_cool=40}] run execute at @e[tag=neck] run execute as @p[tag=wrap] at @s run function moose:titans/mobs/1/kill_atk_1

#Quitar tag
execute as @s[scores={atk_cool=1..31}] run tag @a[tag=wrap] remove wrap
