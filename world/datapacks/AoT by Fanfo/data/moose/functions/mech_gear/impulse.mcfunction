execute as @s[scores={man_land=2..}] run summon area_effect_cloud ^ ^.5 ^ {Particle:"explosion",NoGravity:1b,ReapplicationDelay:0,Radius:1.5f,Duration:15,Effects:[{Id:25b,Amplifier:28b,Duration:7}]}

#execute as @s[scores={man_land=2..}] run effect give @s levitation 

#Falling
execute as @s[scores={man_land=2..}] run effect give @s slow_falling 2 2 true

execute as @e[distance=..3,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{odm_gear:1b}}},type=!armor_stand,type=!bat, tag=!motion, tag=!target, type=!area_effect_cloud] as @s run scoreboard players add @p near 1

# run scoreboard players add @p near 1

# IF != CERCA DE UNA ENTIDAD
execute as @s[scores={man_land=2..,near=0}] run effect give @s resistance 1 255 true
execute as @s[scores={man_land=2..,near=0}] run summon creeper ^ ^.45 ^-1.7 {NoGravity:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:2b,Fuse:0,Tags:["motion"]}
execute as @s[scores={man_land=2..,near=0}] run summon creeper ^ ^.45 ^-1.7 {NoGravity:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:2b,Fuse:0,Tags:["motion"]}
playsound minecraft:aot.impulse player @p[scores={man_land=2..}] ~ ~ ~ 1 1

# IF = CERCA DE UNA ENTIDAD
execute as @s[scores={man_land=2..,near=1..}] run tag @s add impulse2
#reset score 
scoreboard players set @s near 0

#say matar el arnes
execute as @s run function moose:mech_gear/kill
execute as @s run tag @s remove throw
scoreboard players set @p man_land 0

