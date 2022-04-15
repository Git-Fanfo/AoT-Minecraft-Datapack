# ATTACK
execute if entity @s[scores={atk=67}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:107}},{}]}
execute if entity @s[scores={atk=62}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:108}},{}]}
execute if entity @s[scores={atk=59}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:109}},{}]}
execute if entity @s[scores={atk=56}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:110}},{}]}
execute if entity @s[scores={atk=53}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:111}},{}]}
execute if entity @s[scores={atk=50}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:112}},{}]}
execute if entity @s[scores={atk=44}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:113}},{}]}
execute if entity @s[scores={atk=35}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:114}},{}]}
execute if entity @s[scores={atk=29}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:113}},{}]}
execute if entity @s[scores={atk=22}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:112}},{}]}
execute if entity @s[scores={atk=16}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:113}},{}]}
execute if entity @s[scores={atk=10}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:114}},{}]}
#execute if entity @s[scores={atk=7..46}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:8}},{}]}

execute if entity @s[scores={atk=1..2}] run tag @s remove attack_2