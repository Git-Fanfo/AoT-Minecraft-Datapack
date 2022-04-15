# IDLE
#say walk
execute if entity @s[scores={walk=58}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:119}},{}]}
execute if entity @s[scores={walk=53}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:120}},{}]}
execute if entity @s[scores={walk=48}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:121}},{}]}
execute if entity @s[scores={walk=43}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:122}},{}]}

execute if entity @s[scores={walk=38}] at @s run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 5 .1
execute if entity @s[scores={walk=38}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:123}},{}]}

execute if entity @s[scores={walk=23}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:124}},{}]}
execute if entity @s[scores={walk=18}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:125}},{}]}
execute if entity @s[scores={walk=13}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:126}},{}]}
execute if entity @s[scores={walk=8}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:127}},{}]}

execute if entity @s[scores={walk=4}] at @s run playsound minecraft:aot.footsteps hostile @a ~ ~ ~ 5 .1
execute if entity @s[scores={walk=4}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:128}},{}]}

execute if entity @s[scores={walk=1}] run tag @s remove walk
