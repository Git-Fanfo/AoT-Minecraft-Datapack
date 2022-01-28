scoreboard players set segundo time 0

# Kill em all
execute run function moose:kill_mobs

# Escanear cuando spawnea un mob
execute as @e[type=pig,tag=!not_titan,sort=random] at @s run function moose:mob1/spawn

# Efectos del 3D
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{maneuver_gear:1b}}}] run function moose:mech_gear/effects

# Kill old
#execute run function moose:mech_gear/kill
tag @a[tag=impulse2] remove impulse2 

# Efectos titanes
scoreboard players set @e[tag=neck,scores={smoke_cool=0}] smoke_cool 7
execute as @e[tag=neck,scores={smoke_cool=7}] at @s run particle minecraft:campfire_signal_smoke ^ ^ ^-1 0 1 0 .01 60
scoreboard players remove @e[tag=neck,scores={smoke_cool=1..}] smoke_cool 1
#data modify entity @e[tag=neck,limit=1,sort=nearest] Health set value 20

# Salvar Titan
execute as @e[tag=neck, nbt={HurtTime:10s}] at @s run function moose:titans/heal