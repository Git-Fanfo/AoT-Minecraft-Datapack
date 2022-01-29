# ATTACK
execute if entity @s[scores={atk=63..70}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:4}},{}]}
execute if entity @s[scores={atk=56..62}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:5}},{}]}
execute if entity @s[scores={atk=51..55}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:6}},{}]}
execute if entity @s[scores={atk=47..50}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:7}},{}]}
execute if entity @s[scores={atk=41..46}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:8}},{}]}
execute if entity @s[scores={atk=36..40}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:9}},{}]}
execute if entity @s[scores={atk=32..35}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:8}},{}]}
execute if entity @s[scores={atk=1..31}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:7}},{}]}
#execute if entity @s[scores={atk=7..46}] run data merge entity @s {HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:8}},{}]}

execute if entity @s[scores={atk=1..2}] run tag @s remove attack