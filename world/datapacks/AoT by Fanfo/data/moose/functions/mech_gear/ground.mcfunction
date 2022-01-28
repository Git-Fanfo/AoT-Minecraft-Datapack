scoreboard players operation @a push -= @s id_hook_1
#TODO gancho izq

execute as @a[tag=throw,scores={push=0}] run scoreboard players add @s man_land 1

execute as @s at @s run tp ^ ^ ^1

execute as @s at @a[tag=throw] run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 1.3

tag @s add InGround