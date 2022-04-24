#execute as @s[scores={man_land=2..}] unless block ~ ~-1 ~ air run summon area_effect_cloud ^ ^.5 ^ {Particle:"explosion",NoGravity:1b,ReapplicationDelay:0,Radius:2f,Duration:15,Effects:[{Id:25b,Amplifier:32b,Duration:5,ShowParticles:0b}]}

# Cada vez que se tira poner el man_throw
execute store result score @s man_impulse run data get entity @s Rotation[0]
scoreboard players operation @s man_impulse -= @s man_throw

execute as @s[scores={man_land=2..,man_impulse=-90..90}] run function moose:mech_gear/aux_man_land

#Playsound si está por fuera
execute as @s unless score @s man_impulse matches -90..90 run playsound minecraft:item.shield.break player @s ~ ~ ~ 2 .5

#execute as @s[scores={man_land=2..}] run effect give @s levitation 
#PETITION UNCOMMENT
title @s actionbar {"text":"/     \\","bold":true,"color":"green"}

#Si esta cerca del kill
execute if entity @e[distance=..4,tag=kill] as @s run scoreboard players add @s near 1

# run scoreboard players add @p near 1

# IF != CERCA DE UNA ENTIDAD
execute as @s[scores={man_land=1..,near=0}] run effect give @a[distance=..3] resistance 2 255 true

# IF = CERCA DE UNA ENTIDAD
#execute as @s[scores={man_land=2..,near=1..}] run tag @s add impulse2
#reset score 
scoreboard players set @s near 0

#say matar el arnes
execute as @s run function moose:mech_gear/kill
execute as @s run tag @s remove throw
scoreboard players set @s man_land 0

