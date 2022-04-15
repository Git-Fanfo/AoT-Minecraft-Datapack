# Sound and Particle
execute as @s[scores={atk_cool=140}] at @s run tag @e[tag=body,sort=nearest,limit=1] add attack_2
execute as @s[scores={atk_cool=140}] at @s run scoreboard players set @e[tag=body,sort=nearest,limit=1] atk 0

# Add tag wrap
execute as @s[scores={atk_cool=140}] run tag @p add wrap

# Mirar titan
#execute as @s[scores={atk_cool=2..70}] at @p[tag=wrap] run tp @p ~ ~ ~ facing entity @e[type=slime,sort=nearest, tag=neck,limit=1] feet

#Velocidad de subida
#execute as @s[scores={atk_cool=66}] at @s run effect give @p[tag=wrap] levitation 2 0 true
#execute as @s[scores={atk_cool=67..69}] at @s run tp @p[tag=wrap] ^ ^-1 ^2
#execute as @s[scores={atk_cool=63..66}] at @s run tp @p[tag=wrap] ^ ^-.5 ^2
#execute as @s[scores={atk_cool=59..62}] at @s run tp @p[tag=wrap] ^ ^.5 ^2
#execute as @s[scores={atk_cool=55..58}] at @s run tp @p[tag=wrap] ^ ^1 ^2
#execute as @s[scores={atk_cool=51..54}] at @s run tp @p[tag=wrap] ^ ^1.5 ^2
#execute as @s[scores={atk_cool=47..50}] at @s run tp @p[tag=wrap] ^ ^3.5 ^2
#execute as @s[scores={atk_cool=43..46}] at @s run tp @p[tag=wrap] ^ ^4 ^2
#execute as @s[scores={atk_cool=41..42}] at @s run tp @p[tag=wrap] ^ ^4.2 ^1.8
#execute as @s[scores={atk_cool=..40}] at @s run tp @p[tag=wrap] ^ ^4.5 ^.6

# Comer
execute as @s[scores={atk_cool=125}] run execute at @e[tag=neck,tag=mob4] run execute as @p[tag=wrap,distance=..6.3] at @s run function moose:titans/mobs/4/kill_atk_2

#Quitar tag
execute as @s[scores={atk_cool=71..75}] run tag @a[tag=wrap] remove wrap
