# IDLE
#say walk
execute if entity @s[scores={walk=54..58}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:12}},{}]}
execute if entity @s[scores={walk=49..53}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:13}},{}]}
execute if entity @s[scores={walk=44..48}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:14}},{}]}
execute if entity @s[scores={walk=39..43}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:15}},{}]}
execute if entity @s[scores={walk=24..38}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:16}},{}]}
execute if entity @s[scores={walk=19..23}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:17}},{}]}
execute if entity @s[scores={walk=14..18}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:18}},{}]}
execute if entity @s[scores={walk=9..13}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:19}},{}]}
execute if entity @s[scores={walk=4..8}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:20}},{}]}
execute if entity @s[scores={walk=..4}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:21}},{}]}

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
