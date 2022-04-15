#execute as @s[tag=cart_pivot] at FanfoYT run tp @s ~ ~ ~

#execute as @s[tag=cart_pivot] at @s run tp @e[tag=cart_body,sort=nearest,limit=1] ^.35 ^-3 ^-3
execute as @s[tag=cart] run function moose:shifters/mobs/cart/main