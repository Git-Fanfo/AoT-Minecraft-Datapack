#execute if entity @a[tag=cart,limit=1,tag=!transform] run kill @s

execute as @s[tag=body] run function moose:shifters/mobs/cart/body

# tp de los carts

execute as @s[tag=turret] run execute at @a[tag=cart,limit=1] run function moose:shifters/mobs/cart/attack_2/turret

# Kill cuando baje la vida
execute if score cart health matches ..0 run say morido