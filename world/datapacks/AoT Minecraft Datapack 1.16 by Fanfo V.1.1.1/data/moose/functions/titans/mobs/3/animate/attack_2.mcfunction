# ATTACK
execute if entity @s[scores={atk=70}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:75}},{}]}
execute if entity @s[scores={atk=67}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:76}},{}]}
execute if entity @s[scores={atk=64}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:77}},{}]}
execute if entity @s[scores={atk=61}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:78}},{}]}
execute if entity @s[scores={atk=56}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:79}},{}]}
execute if entity @s[scores={atk=50}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:80}},{}]}
execute if entity @s[scores={atk=44}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:81}},{}]}
execute if entity @s[scores={atk=38}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:82}},{}]}
execute if entity @s[scores={atk=18}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:80}},{}]}
execute if entity @s[scores={atk=15}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:79}},{}]}
execute if entity @s[scores={atk=12}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:78}},{}]}
execute if entity @s[scores={atk=9}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:77}},{}]}
execute if entity @s[scores={atk=6}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:76}},{}]}
execute if entity @s[scores={atk=3}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:75}},{}]}
#execute if entity @s[scores={atk=7..46}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:8}},{}]}

execute if entity @s[scores={atk=1..2}] run tag @s remove attack_2