summon zombie_villager ~ ~ ~ {Fire:3,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,Team:"nocol",PersistenceRequired:1b,Tags:["feet","titan","mob3"],Passengers:[{id:"minecraft:slime",Fire:100,HasVisualFire:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,Size:8,Tags:["legs","titan","mob3"],Passengers:[{id:"minecraft:armor_stand",Team:"nocol",Invulnerable:1b,ShowArms:1b,Invisible:1b,PersistenceRequired:1b,Tags:["body","titan","mob3"],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:4144959,Passengers:[{id:"minecraft:slime",Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,Size:5,Tags:["neck","titan","mob3"],ActiveEffects:[{Id:6b,Amplifier:127b,Duration:2147483647,ShowParticles:0b},{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}],HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:54}},{}]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000},{Name:generic.attack_damage,Base:1}]}],CustomName:'{"text":"Titan"}',ArmorItems:[{},{},{},{id:'minecraft:arrow',Count:1b,tag:{CustomModelData:1}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:200},{Name:generic.movement_speed,Base:0.4},{Name:generic.attack_damage,Base:30}]}

summon slime ~ ~8 ~ {Fire:3,Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:1000f,Size:2,Tags:["kill","mob3"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1000}]}

summon lightning_bolt ~ ~ ~
summon lightning_bolt ~ ~1 ~

execute as @e[tag=body,sort=nearest,limit=1] at @s run function moose:selectors/add_scores