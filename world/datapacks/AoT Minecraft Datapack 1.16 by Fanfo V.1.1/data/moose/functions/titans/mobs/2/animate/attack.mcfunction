# ATTACK
execute if entity @s[scores={atk=68..70}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:41}},{}]}
execute if entity @s[scores={atk=65..67}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:42}},{}]}
execute if entity @s[scores={atk=62..64}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:43}},{}]}
execute if entity @s[scores={atk=60..61}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:44}},{}]}
execute if entity @s[scores={atk=57..59}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:45}},{}]}
execute if entity @s[scores={atk=55}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:46}},{}]}
#execute if entity @s[scores={atk=32..35}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:8}},{}]}
#execute if entity @s[scores={atk=1..31}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:7}},{}]}
#execute if entity @s[scores={atk=7..46}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:8}},{}]}

execute if entity @s[scores={atk=1..45}] run tag @s remove attack