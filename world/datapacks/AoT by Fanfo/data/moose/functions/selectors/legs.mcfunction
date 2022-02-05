#Rotar 
execute at @s run data modify entity @e[type=minecraft:armor_stand,tag=body,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
execute at @s run data modify entity @e[type=minecraft:slime,tag=neck,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]

tellraw @a ["",{"text":"You have "},{"score":{"name":"@s","objective":"atk_cool"}},{"text":" of the server's currency."}]

scoreboard players set @s[scores={atk_cool=0}] atk_cool 140
#Debe ser siempre 6 ASAS
execute as @s[scores={atk_cool=71..140}] at @e[tag=body,sort=nearest,limit=1] if entity @a[distance=0..6] run function moose:titans/mobs/1/attack_2
#execute as @s[scores={atk_cool=1..70}] at @s if entity @a[distance=0..7.5] run function moose:titans/mobs/1/attack

scoreboard players remove @s[scores={atk_cool=1..}] atk_cool 1
