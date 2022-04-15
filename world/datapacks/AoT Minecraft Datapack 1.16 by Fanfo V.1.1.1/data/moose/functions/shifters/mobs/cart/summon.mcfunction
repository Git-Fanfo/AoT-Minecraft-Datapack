summon giant ~ ~ ~ {Team:"nocol",NoAI:1b,Tags:["body","shifter","cart"],CustomName:'{"text":"Dinnerbone"}',HandItems:[{id:'minecraft:scute',Count:1b,tag:{CustomModelData:1}},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}


summon minecart ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["cart_1","shifter","cart"]}

execute as @e[tag=body,tag=cart,sort=nearest,limit=1] at @s run function moose:shifters/mobs/cart/add_scores