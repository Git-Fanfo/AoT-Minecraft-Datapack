execute unless block ~ ~-1 ~ air run summon area_effect_cloud ^ ^.5 ^ {Particle:"explosion",NoGravity:1b,ReapplicationDelay:0,Radius:2f,Duration:15,Effects:[{Id:25b,Amplifier:32b,Duration:5,ShowParticles:0b}]}

#Falling PETITION 2.. -> 1..
effect give @s slow_falling 3 0 true

#PETITION 2.. -> 1..
execute as @s[scores={man_push=..2,near=0}] run function moose:mech_gear/creeper/1
execute as @s[scores={man_push=3,near=0}] run function moose:mech_gear/creeper/2
execute as @s[scores={man_push=4..9,near=0}] run function moose:mech_gear/creeper/3
execute as @s[scores={man_push=10..,near=0}] run function moose:mech_gear/creeper/4

#PETITION 2.. -> 1..
playsound minecraft:aot.impulse player @s ~ ~ ~ 1 1

# IF = CERCA DE UNA ENTIDAD
execute as @s[scores={near=1..}] run tag @s add impulse2

