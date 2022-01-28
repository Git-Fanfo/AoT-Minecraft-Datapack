### EJECUTAR CUANDO SE SPAWNEA UN CERDO

## Si es = 0
# SPAWN TITAN

execute if score titan_c counter matches 0 run summon zombie_villager ~ ~ ~ {Fire:3,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,Tags:["feet","titan"],Passengers:[{id:"minecraft:slime",Fire:100,HasVisualFire:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Size:8,Tags:["legs","titan"],Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,ShowArms:1b,Invisible:1b,PersistenceRequired:1b,Tags:["body","titan"],Pose:{RightArm:[0f,0f,0f]},Passengers:[{id:"minecraft:slime",Silent:1b,Invulnerable:0b,PersistenceRequired:1b,NoAI:1b,Health:1000f,Size:5,Tags:["neck","titan"],ActiveEffects:[{Id:6b,Amplifier:127b,Duration:19999980,ShowParticles:0b},{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000}]}],HandItems:[{id:'minecraft:flint',Count:1b,tag:{CustomModelData:1}},{}]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000},{Name:generic.attack_damage,Base:1}]}],CustomName:'{"text":"Titan"}',ArmorItems:[{},{},{},{id:'minecraft:arrow',Count:1b,tag:{CustomModelData:1}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:200},{Name:generic.movement_speed,Base:0.5},{Name:generic.attack_damage,Base:30}]}

execute if score titan_c counter matches 0 run summon lightning_bolt ~ ~ ~
execute if score titan_c counter matches 0 run summon lightning_bolt ~ ~ ~

#Iniciar scoreboards
execute at @s run scoreboard players add @e[tag=legs,type=slime,sort=nearest,limit=1] atk_cool 0
scoreboard players add @e[tag=feet,type=zombie_villager,sort=nearest,limit=1] rot_cool 0
scoreboard players add @e[tag=neck,sort=nearest,limit=1] smoke_cool 0
scoreboard players set @e[tag=body,sort=nearest,limit=1] idle 0
scoreboard players set @e[tag=body,sort=nearest,limit=1] atk 0
scoreboard players set @e[tag=body,sort=nearest,limit=1] walk 0
scoreboard players set @e[tag=body,sort=nearest,limit=1] mov 0

# Matar cerdo
execute if score titan_c counter matches 0 run effect give @s minecraft:invisibility 999999 1
execute if score titan_c counter matches 0 run tp @s ~ ~-256 ~

# añadir la tag
tag @s add not_titan
# Incrementar scoreboard
scoreboard players add titan_c counter 1
#Reset
execute if score titan_c counter matches 1 run scoreboard players set titan_c counter 0