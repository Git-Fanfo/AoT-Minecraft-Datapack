# IDLE
#say idle
execute if entity @s[scores={idle=40}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:83}},{}]}
execute if entity @s[scores={idle=30}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:84}},{}]}
execute if entity @s[scores={idle=20}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:85}},{}]}
execute if entity @s[scores={idle=10}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:84}},{}]}
