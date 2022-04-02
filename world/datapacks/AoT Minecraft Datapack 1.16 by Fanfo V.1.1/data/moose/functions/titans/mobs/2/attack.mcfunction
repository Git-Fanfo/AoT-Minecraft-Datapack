#execute at @s run particle minecraft:smoke ~ ~ ~ 2 2 2 .3 700
# AS AT CUSTOM MOB1

# Sound and Particle
execute as @s[scores={atk_cool=70}] at @s run tag @e[tag=body,sort=nearest,limit=1] add attack
execute as @s[scores={atk_cool=70}] at @s run scoreboard players set @e[tag=body,sort=nearest,limit=1] atk 0

# Add tag wrap
execute as @s[scores={atk_cool=69}] run tag @p add wrap
# Titan mira a player
execute as @s[scores={atk_cool=68}] as @e[tag=feet, sort=nearest, limit=1] run execute at @s run tp @s ~ ~ ~ facing entity @p[tag=wrap] eyes

# Speed to Titan
execute as @s[scores={atk_cool=67}] as @e[tag=feet, sort=nearest, limit=1] run effect give @s speed 1 3 true

# Comer
execute as @s[scores={atk_cool=40}] run execute at @e[tag=neck] run execute as @p[tag=wrap,distance=..4] at @s run function moose:titans/mobs/2/kill_atk_1

#Quitar tag
execute as @s[scores={atk_cool=1..31}] run tag @a[tag=wrap] remove wrap
