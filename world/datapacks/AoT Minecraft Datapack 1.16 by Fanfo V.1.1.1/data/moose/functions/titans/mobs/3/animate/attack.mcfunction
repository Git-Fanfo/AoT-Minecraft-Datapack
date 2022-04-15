# ATTACK
execute if entity @s[scores={atk=70}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:67}},{}]}
execute if entity @s[scores={atk=67}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:68}},{}]}
execute if entity @s[scores={atk=64}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:69}},{}]}
execute if entity @s[scores={atk=61}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:70}},{}]}
execute if entity @s[scores={atk=56}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:71}},{}]}
execute if entity @s[scores={atk=50}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:72}},{}]}
execute if entity @s[scores={atk=44}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:73}},{}]}
execute if entity @s[scores={atk=38}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:74}},{}]}
execute if entity @s[scores={atk=18}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:72}},{}]}
execute if entity @s[scores={atk=15}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:71}},{}]}
execute if entity @s[scores={atk=12}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:70}},{}]}
execute if entity @s[scores={atk=9}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:69}},{}]}
execute if entity @s[scores={atk=6}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:68}},{}]}
execute if entity @s[scores={atk=3}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:67}},{}]}
#execute if entity @s[scores={atk=7..46}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:8}},{}]}

execute if entity @s[scores={atk=1..2}] run tag @s remove attack