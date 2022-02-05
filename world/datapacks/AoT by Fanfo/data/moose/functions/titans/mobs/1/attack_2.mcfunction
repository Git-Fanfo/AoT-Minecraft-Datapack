execute as @s[scores={atk_cool=140}] at @s run tag @e[tag=body,sort=nearest,limit=1] add attack_2
execute as @s[scores={atk_cool=140}] at @s run scoreboard players set @e[tag=body,sort=nearest,limit=1] atk 0

# Add tag wrap
execute as @s[scores={atk_cool=139}] run tag @p add wrap
# Titan mira a player
execute as @s[scores={atk_cool=72..138}] as @e[tag=feet, sort=nearest, limit=1] run execute at @e[tag=feet, sort=nearest, limit=1] run tp @s ~ ~ ~ facing entity @p[tag=wrap] eyes

# Tp al frente
#execute as @s[scores={atk_cool=130..137}] at @s run tp @p[tag=wrap] ^ ^9.3 ^3.5
#execute as @s[scores={atk_cool=122..129}] at @s run tp @p[tag=wrap] ^ ^7 ^3.3
#execute as @s[scores={atk_cool=117..121}] at @s run tp @p[tag=wrap] ^ ^6 ^3
execute as @s[scores={atk_cool=137}] at @s run say 1
execute as @s[scores={atk_cool=129}] at @s run say 2
execute as @s[scores={atk_cool=121}] at @s run say 3
# atack


# Mirar titan
#execute as @s[scores={atk_cool=72..138}] at @p[tag=wrap] run tp @p ~ ~ ~ facing entity @e[type=slime,sort=nearest, tag=neck,limit=1] feet