# IDLE
#say idle
execute if entity @s[scores={idle=40}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:1}},{}]}
execute if entity @s[scores={idle=35}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:2}},{}]}
execute if entity @s[scores={idle=23}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:3}},{}]}
execute if entity @s[scores={idle=11}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:2}},{}]}
