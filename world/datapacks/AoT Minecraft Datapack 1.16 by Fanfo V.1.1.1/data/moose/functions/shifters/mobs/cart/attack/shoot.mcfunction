# Summon gancho izquierda
summon snowball ^ ^ ^3.5 {Tags:["bullet","spball"],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"explosion",NoGravity:1b,Radius:0f,Duration:19999980,WaitTime:0,Tags:["bull_dmg"],Effects:[{Id:7b,Amplifier:1b,Duration:1,ShowParticles:0b}]}],Item:{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:1}}}
particle minecraft:block gold_block ^ ^-.2 ^1.8 0 0 0 10 1 force
playsound minecraft:aot.bullet_shoot player @a[distance=..15] ~ ~ ~

particle dust 0.945 0.827 0.145 1 ^ ^ ^3.1 .1 .1 .1 2 3 force
particle dust 0.855 0.427 0.176 1 ^ ^ ^3.1 .2 .2 .2 2 1 force
#particle dust 0 0 0 1.5 ^ ^1.5 ^3.5 0 0 0 1 10 force