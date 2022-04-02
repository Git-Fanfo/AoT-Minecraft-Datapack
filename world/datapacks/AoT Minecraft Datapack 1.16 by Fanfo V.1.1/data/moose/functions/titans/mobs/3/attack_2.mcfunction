execute as @s[scores={atk_cool=140}] at @s run tag @e[tag=body,sort=nearest,limit=1] add attack_2
execute as @s[scores={atk_cool=140}] at @s run scoreboard players set @e[tag=body,sort=nearest,limit=1] atk 0
# Add tag wrap
execute as @s[scores={atk_cool=140}] run tag @p add wrap
# Titan mira a player
#execute as @s[scores={atk_cool=2..68}] as @e[tag=feet, sort=nearest, limit=1] run execute at @s run tp @s ~ ~ ~ facing entity @p[tag=wrap] eyes

# Mirar titan
execute as @s[scores={atk_cool=72..140}] at @p[tag=wrap] run tp @p ~ ~ ~ facing entity @e[type=slime,sort=nearest, tag=neck,limit=1] eyes

# Tp al frente
execute as @s[scores={atk_cool=140}] at @s run effect give @p[tag=wrap] levitation 2 0 true
execute as @s[scores={atk_cool=138..140}] at @s run tp @p[tag=wrap] ^-3 ^9 ^-.5
execute as @s[scores={atk_cool=135..137}] at @s run tp @p[tag=wrap] ^-3 ^8.5 ^.5
execute as @s[scores={atk_cool=132..134}] at @s run tp @p[tag=wrap] ^-3 ^7.5 ^1.5
execute as @s[scores={atk_cool=127..131}] at @s run tp @p[tag=wrap] ^-2 ^7 ^1.7
execute as @s[scores={atk_cool=121..126}] at @s run tp @p[tag=wrap] ^-1 ^7 ^1.5
execute as @s[scores={atk_cool=115..120}] at @s run tp @p[tag=wrap] ^-.8 ^7 ^1
execute as @s[scores={atk_cool=109..114}] at @s run tp @p[tag=wrap] ^-.2 ^7.4 ^.8
execute as @s[scores={atk_cool=..108}] at @s run tp @p[tag=wrap] ^-.2 ^7.5 ^.6

#Comer
execute as @s[scores={atk_cool=108}] run execute at @e[tag=neck] run execute as @p[distance=0..4,tag=wrap] at @s run function moose:titans/mobs/3/kill_atk_2

#Quitar tag
execute as @s[scores={atk_cool=1..100}] run tag @a[tag=wrap] remove wrap