summon giant ~ ~ ~ {Team:"nocol",PersistenceRequired:1b,NoAI:1b,Health:200f,Tags:["body","shifter","cart"],CustomName:'{"text":"Dinnerbone"}',HandItems:[{id:'minecraft:scute',Count:1b,tag:{CustomModelData:1}},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:200}]}


summon minecart ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["turret","pos_1","shifter","cart"]}
summon minecart ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["turret","pos_2","shifter","cart"]}
summon minecart ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["turret","pos_3","shifter","cart"]}
summon chest_minecart ~ ~ ~ {NoGravity:1b,Silent:1b,Tags:["turret","pos_4","shifter","cart"]}

execute as @e[tag=body,tag=cart,sort=nearest,limit=1] at @s run function moose:shifters/mobs/cart/add_scores