#tellraw @a ["",{"text":"You have "},{"score":{"name":"@s","objective":"atk_cool"}},{"text":" of the server's currency."}]

scoreboard players set @s[scores={atk_cool=0}] atk_cool 140
#Debe ser siempre 6 ASAS

# Mob 1
# Cuando es de abajo hacia arriba recuerda la tag @a[distance desde neck]
execute as @s[tag=mob1,scores={atk_cool=1..70}] at @s if entity @a[distance=0..10] run function moose:titans/mobs/1/attack
execute as @s[tag=mob1,scores={atk_cool=71..140}] at @s run execute at @e[tag=mob1,tag=neck,sort=nearest,limit=1] if entity @a[distance=0..6] run function moose:titans/mobs/1/attack_2

# Mob 2
execute as @s[tag=mob2,scores={atk_cool=1..70}] at @s if entity @a[distance=0..10] run function moose:titans/mobs/2/attack
execute as @s[tag=mob2,scores={atk_cool=71..140}] at @s if entity @a[distance=0..4] run function moose:titans/mobs/2/attack_2

# Mob 3
execute as @s[tag=mob3,scores={atk_cool=1..70}] at @s run execute at @e[tag=mob3,tag=neck,sort=nearest,limit=1] if entity @a[distance=0..6] run function moose:titans/mobs/3/attack
execute as @s[tag=mob3,scores={atk_cool=71..140}] at @s run execute at @e[tag=mob3,tag=neck,sort=nearest,limit=1] if entity @a[distance=0..6] run function moose:titans/mobs/3/attack_2

# Mob 4
execute as @s[tag=mob4,scores={atk_cool=1..70}] at @s if entity @a[distance=0..7] run function moose:titans/mobs/4/attack
execute as @s[tag=mob4,scores={atk_cool=71..140}] at @s if entity @a[distance=0..7] run function moose:titans/mobs/4/attack_2

# Mob 5
execute as @s[tag=mob5,scores={atk_cool=1..70}] at @s if entity @a[distance=0..15] run function moose:titans/mobs/5/attack

scoreboard players remove @s[scores={atk_cool=1..}] atk_cool 1
