# Sound and Particle
execute as @s[scores={atk_cool=70}] at @s run tag @e[tag=body,sort=nearest,limit=1] add attack
execute as @s[scores={atk_cool=70}] at @s run scoreboard players set @e[tag=body,sort=nearest,limit=1] atk 0

# Add tag wrap
# execute as @s[scores={atk_cool=70}] at @s run execute at @e[tag=mob4,tag=neck,sort=nearest,limit=1] if entity @a[distance=0..7] run tag @p add wrap

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
execute as @s[scores={atk_cool=70}] as @e[tag=feet, sort=nearest, limit=1] run effect give @s slowness 1 5 true
#execute as @s[scores={atk_cool=30}] as @e[tag=feet, sort=nearest, limit=1] run effect give @s speed 1 5 true
execute as @s[scores={atk_cool=48}] run function moose:titans/mobs/5/jump


# Comer
execute as @s[scores={atk_cool=2..15}] run execute as @a[distance=..6] run function moose:titans/mobs/5/kill_atk_1
