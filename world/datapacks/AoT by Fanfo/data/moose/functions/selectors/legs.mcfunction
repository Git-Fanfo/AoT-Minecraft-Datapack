scoreboard players set @s[scores={atk_cool=0}] atk_cool 140
#Debe ser siempre 6 ASAS
execute as @s[scores={atk_cool=71..140}] at @s if entity @a[distance=0..7.5] run function moose:titans/mobs/1/attack_2
execute as @s[scores={atk_cool=1..70}] at @s if entity @a[distance=0..7.5] run function moose:titans/mobs/1/attack

scoreboard players remove @s[scores={atk_cool=1..}] atk_cool 1