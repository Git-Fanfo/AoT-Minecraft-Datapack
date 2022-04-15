execute as @s[tag=body] run function moose:shifters/mobs/cart/body

# tp de los carts
execute as @s[tag=cart_1] run execute at @a[tag=cart,limit=1] run execute rotated ~ 0 run tp @s ^ ^2.5 ^-2
