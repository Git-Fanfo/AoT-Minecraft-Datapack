# IDLE
#say walk
execute if entity @s[scores={walk=58}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:31}},{}]}
execute if entity @s[scores={walk=53}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:32}},{}]}
execute if entity @s[scores={walk=48}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:33}},{}]}
execute if entity @s[scores={walk=43}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:34}},{}]}

execute if entity @s[scores={walk=43}] at @s run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={walk=38}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:35}},{}]}

execute if entity @s[scores={walk=23}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:36}},{}]}
execute if entity @s[scores={walk=18}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:37}},{}]}
execute if entity @s[scores={walk=13}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:38}},{}]}
execute if entity @s[scores={walk=8}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:39}},{}]}

execute if entity @s[scores={walk=8}] at @s run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={walk=4}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:40}},{}]}

#execute if entity @s[scores={walk=70}] run say 70
#execute if entity @s[scores={walk=69}] run say 69
#execute if entity @s[scores={walk=68}] run say 68
#execute if entity @s[scores={walk=67}] run say 67
#execute if entity @s[scores={walk=66}] run say 66
#execute if entity @s[scores={walk=65}] run say 65
#execute if entity @s[scores={walk=64}] run say 64
#execute if entity @s[scores={walk=63}] run say 63
#execute if entity @s[scores={walk=62}] run say 62
#execute if entity @s[scores={walk=61}] run say 61
#execute if entity @s[scores={walk=60}] run say 60
execute if entity @s[scores={walk=1}] run tag @s remove walk
