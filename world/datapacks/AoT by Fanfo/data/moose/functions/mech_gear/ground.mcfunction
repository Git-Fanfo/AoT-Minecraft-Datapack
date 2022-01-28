execute if entity @s[tag=hook_1] run scoreboard players operation @a push_1 -= @s id_hook_1
execute if entity @s[tag=hook_6] run scoreboard players operation @a push_6 -= @s id_hook_6
#TODO gancho izq

execute as @a[tag=throw,scores={push_1=0}] run scoreboard players add @s man_land 1
execute as @a[tag=throw,scores={push_6=0}] run scoreboard players add @s man_land 1

#Restaurar
execute at @a store result score @p push_1 run data get entity @p UUID[0]
execute at @a store result score @p push_6 run data get entity @p UUID[0]

execute as @s at @s run tp ^ ^ ^1

execute as @s at @a[tag=throw] run playsound minecraft:block.iron_door.close player @p ~ ~ ~ 1 1.3

tag @s add InGround