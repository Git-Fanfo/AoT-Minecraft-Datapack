scoreboard players set segundo time 0

# Kill em all
execute run function moose:kill_mobs

# Escanear cuando spawnea un mob
execute as @e[type=pig,tag=!not_titan,sort=random] at @s run function moose:titans/spawn
execute as @e[type=villager,tag=!not_eldian,tag=!head,sort=random] at @s run function moose:eldian/spawn

#M Matar aldeano
execute as @e[tag=eldian] at @s unless entity @e[tag=head,distance=..2,sort=nearest,limit=1] run tp @s ~ -252 ~

# Efectos del 3D
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{odm_gear:1b}}}] run function moose:mech_gear/effects

# Kill old
tag @a[tag=impulse2] remove impulse2 

#give cool
scoreboard players set @a[tag=!throw] man_cool 0

# Efectos titanes
scoreboard players set @e[tag=neck,scores={smoke_cool=0}] smoke_cool 7
execute as @e[tag=neck,scores={smoke_cool=7}] at @s run particle minecraft:campfire_signal_smoke ^ ^ ^-1 0 1 0 .01 60
execute as @e[tag=neck,scores={smoke_cool=7}] at @s run playsound minecraft:entity.zombie.ambient hostile @a ~ ~ ~ 3 .1
scoreboard players remove @e[tag=neck,scores={smoke_cool=1..}] smoke_cool 1

# tp titan
execute as @e[tag=feet] at @s if entity @e[tag=feet,distance=0.1..3] run summon creeper ^ ^.2 ^1.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,Fuse:0,Tags:["motion"],CustomName:'{"text":"Titan"}'}
# set time
execute store result score hora time run time query daytime
execute if score hora time matches 0..20 run say dia


# Salvar Titan
execute as @e[tag=kill, nbt={HurtTime:10s}] at @s run function moose:titans/heal