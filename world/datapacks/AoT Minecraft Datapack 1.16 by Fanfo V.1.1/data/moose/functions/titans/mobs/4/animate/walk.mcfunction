# IDLE
#say walk
execute if entity @s[scores={walk=58}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:86}},{}]}
execute if entity @s[scores={walk=53}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:87}},{}]}
execute if entity @s[scores={walk=48}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:88}},{}]}
execute if entity @s[scores={walk=43}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:89}},{}]}

execute if entity @s[scores={walk=38}] at @s run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 5 .1
execute if entity @s[scores={walk=38}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:90}},{}]}

execute if entity @s[scores={walk=23}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:91}},{}]}
execute if entity @s[scores={walk=18}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:92}},{}]}
execute if entity @s[scores={walk=13}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:93}},{}]}
execute if entity @s[scores={walk=8}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:94}},{}]}

execute if entity @s[scores={walk=4}] at @s run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 5 .1
execute if entity @s[scores={walk=4}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:95}},{}]}

execute if entity @s[scores={walk=1}] run tag @s remove walk
