execute as @s[scores={atk_cool=140}] at @s run tag @e[tag=body,sort=nearest,limit=1] add attack_2
execute as @s[scores={atk_cool=140}] at @s run scoreboard players set @e[tag=body,sort=nearest,limit=1] atk 0
# Add tag wrap
execute as @s[scores={atk_cool=139}] run tag @p add wrap
# Titan mira a player
execute as @s[scores={atk_cool=72..138}] as @e[tag=feet, sort=nearest, limit=1] run execute at @s run tp @s ~ ~ ~ facing entity @p[tag=wrap] eyes

# Mirar titan
execute as @s[scores={atk_cool=72..138}] at @p[tag=wrap] run tp @p ~ ~ ~ facing entity @e[type=slime,sort=nearest, tag=neck,limit=1] feet

# Tp al frente
execute as @s[scores={atk_cool=137}] at @s run effect give @p[tag=wrap] levitation 2 0 true
execute as @s[scores={atk_cool=137}] at @s run tp @p[tag=wrap] ^ ^9.6 ^3.3
execute as @s[scores={atk_cool=129}] at @s run tp @p[tag=wrap] ^ ^9.3 ^2.7
execute as @s[scores={atk_cool=121}] at @s run tp @p[tag=wrap] ^ ^8.2 ^2.2
execute as @s[scores={atk_cool=113}] at @s run tp @p[tag=wrap] ^ ^8 ^1

#Comer# Comer
execute as @s[scores={atk_cool=112}] run execute at @e[tag=neck] run execute as @p[distance=0..4,tag=wrap] at @s run function moose:titans/mobs/1/kill_atk_2

#execute as @s[scores={atk_cool=137}] at @s run say 1
#execute as @s[scores={atk_cool=129}] at @s run say 2
#execute as @s[scores={atk_cool=121}] at @s run say 3
# atack
#Quitar tag
execute as @s[scores={atk_cool=71..110}] run tag @a[tag=wrap] remove wrap