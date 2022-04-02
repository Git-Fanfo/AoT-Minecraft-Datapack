execute as @s[scores={man_land=2..}] unless block ~ ~-1 ~ air run summon area_effect_cloud ^ ^.5 ^ {Particle:"explosion",NoGravity:1b,ReapplicationDelay:0,Radius:2f,Duration:15,Effects:[{Id:25b,Amplifier:32b,Duration:5,ShowParticles:0b}]}

#execute as @s[scores={man_land=2..}] run effect give @s levitation 
#PETITION UNCOMMENT
#title @s actionbar {"text":"/     \\","bold":true,"color":"green"}

#Falling PETITION
execute as @s[scores={man_land=2..}] run effect give @s slow_falling 2 0 true

#execute as @e[distance=..3,nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{odm_gear:1b}}},type=!armor_stand,type=!bat, tag=!motion, tag=!target, type=!area_effect_cloud] as @s run scoreboard players add @p near 1
execute if entity @e[distance=..3,tag=kill] as @s run scoreboard players add @s near 1

# run scoreboard players add @p near 1

# IF != CERCA DE UNA ENTIDAD
execute as @s[scores={man_land=1..,near=0}] run effect give @a[distance=..3] resistance 2 255 true

#execute as @s[scores={man_land=2..,near=0}] run summon creeper ^ ^.75 ^-1.7 {NoGravity:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:2b,Fuse:0,Tags:["motion"]}
#execute as @s[scores={man_land=2..,near=0}] run summon creeper ^ ^.75 ^-1.7 {NoGravity:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:2b,Fuse:0,Tags:["motion"]}
#execute as @s[scores={man_land=2..,near=0}] run summon creeper ^ ^.75 ^-1.7 {NoGravity:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:2b,Fuse:0,Tags:["motion"]}
#execute as @s[scores={man_land=2..,near=0}] run summon creeper ^ ^.75 ^-1.7 {NoGravity:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:2b,Fuse:0,Tags:["motion"]}
#PETITION 2.. -> 1..
execute as @s[scores={man_land=1..,man_push=..2,near=0}] run function moose:mech_gear/creeper/1
execute as @s[scores={man_land=1..,man_push=3,near=0}] run function moose:mech_gear/creeper/2
execute as @s[scores={man_land=1..,man_push=4..9,near=0}] run function moose:mech_gear/creeper/3
execute as @s[scores={man_land=1..,man_push=10..,near=0}] run function moose:mech_gear/creeper/4


playsound minecraft:aot.impulse player @s[scores={man_land=1..}] ~ ~ ~ 1 1
#PETITION 2.. -> 1..

# IF = CERCA DE UNA ENTIDAD
execute as @s[scores={man_land=2..,near=1..}] run tag @s add impulse2
#reset score 
scoreboard players set @s near 0

#say matar el arnes
execute as @s run function moose:mech_gear/kill
execute as @s run tag @s remove throw
scoreboard players set @s man_land 0

