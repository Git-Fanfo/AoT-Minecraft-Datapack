#say @s no
execute if entity @s[scores={idle=39}] run data merge entity @s {HandItems:[{id:'minecraft:scute',Count:1b,tag:{CustomModelData:1}},{}]}
execute if entity @s[scores={idle=34}] run data merge entity @s {HandItems:[{id:'minecraft:scute',Count:1b,tag:{CustomModelData:2}},{}]}
execute if entity @s[scores={idle=22}] run data merge entity @s {HandItems:[{id:'minecraft:scute',Count:1b,tag:{CustomModelData:3}},{}]}
execute if entity @s[scores={idle=10}] run data merge entity @s {HandItems:[{id:'minecraft:scute',Count:1b,tag:{CustomModelData:2}},{}]}

#tellraw @p ["",{"text":"Test ticks: "},{"score":{"name":"@s","objective":"idle"}}]

#[scores={idle=40}] 