# mover el modelo
# Y si lo tpas en base a un estado? like si está idle así y si está en corriendo lo pones más cerca
execute as @s at @a[tag=cart,limit=1,tag=!walk] run execute rotated ~ 0 run tp @s ^.35 ^-3.9 ^-2
execute as @s at @a[tag=cart,limit=1,tag=walk] run execute rotated ~ 0 run tp @s ^.35 ^-3.9 ^-1.4
execute as @s at @a[tag=cart,limit=1] if score cart_is_jumping jump matches 1 run execute rotated ~ 0 run tp @s ^.35 ^-1.9 ^-1.4


 # Rotar el modelo
data modify entity @s[tag=body] Rotation[0] set from entity @a[tag=cart,limit=1] Rotation[0]

data modify entity @s[tag=body] Motion[1] set from entity @a[tag=cart,limit=1] Motion[1]


#execute if score cart_is_jumping jump matches 1 run data merge entity @s {HandItems:[{id:'minecraft:scute',Count:1b,tag:{CustomModelData:2}},{}]}
#execute if score cart_is_jumping jump matches 0 run data merge entity @s {HandItems:[{id:'minecraft:scute',Count:1b,tag:{CustomModelData:1}},{}]}

#If se está moviendo
#execute as @s if score @a[tag=cart,limit=1] motion_x1_1 matches 1.. run tag @s add walk

# animate 

scoreboard players set @s[scores={walk=0}] walk 58
scoreboard players set @s[scores={idle=0}] idle 40

#Aqui no se puede usar desde n sino desde n-1 porque se opera antes
execute if entity @a[tag=cart,limit=1,tag=!attack,tag=!attack_2,tag=!walk] run function moose:shifters/mobs/cart/animate/idle
execute if entity @a[tag=cart,limit=1,tag=!attack,tag=!attack_2,tag=walk] run function moose:shifters/mobs/cart/animate/walk

scoreboard players remove @s[scores={idle=1..40}] idle 1
scoreboard players remove @s[scores={atk=1..70}] atk 1
scoreboard players remove @s[scores={walk=1..58}] walk 1