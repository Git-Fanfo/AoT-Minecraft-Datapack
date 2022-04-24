execute as @s if entity @s[tag=!first] run function moose:shifters/mobs/cart/born
# Its moving!
# Voy a aprovechar que ya existen scoreboards para esto y así no creo variables
execute as @s store result score @s motion_x1_1 run data get entity @s Pos[0] 1000
# Si se mueve ponle walk
execute unless score @s motion_x1_1 = @s motion_x2_1 run tag @s add walk
execute as @s store result score @s motion_x2_1 run data get entity @s Pos[0] 1000

# Sube una pendiente
execute unless block ~ ~-4 ~ air run tp @s ~ ~1 ~

effect give @s slow_falling 3 0 true
effect give @s invisibility 2 0 true

#particle smoke
#execute rotated ~ 0 run particle campfire_cosy_smoke ^ ^2.3 ^-.7 .2 .2 .2 0.01 6

#execute if predicate moose:is_sprinting run execute rotated ~ 0 run tp @s ^ ^ ^.2

# Si no está saltando levita
execute unless score cart_is_jumping jump matches 1 unless block ~ ~-5 ~ air run function moose:shifters/mobs/cart/floor
# Si no esta en el suelo pone la variable cart_is_on_floor en 0
execute if block ~ ~-5 ~ air run scoreboard players set cart_is_on_floor jump 0

# Guardar el valor del Motion para saber cuando cae
execute store result score cart_motion jump run data get entity @s Motion[1] 10000

# Si cayendo ya no esta saltando
execute if score cart_motion jump matches ..0 run scoreboard players set cart_is_jumping jump 0
#execute if score cart_motion jump matches 1.. run scoreboard players set cart_is_jumping jump 1

# Si esta en el piso y salta
execute if score cart_is_on_floor jump matches 1 if predicate moose:is_sneaking run function moose:shifters/mobs/cart/jump