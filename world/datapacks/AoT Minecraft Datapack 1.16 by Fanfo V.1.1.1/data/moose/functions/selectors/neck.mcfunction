#execute as @s at @s unless entity @e[tag=kill,distance=..5] run summon spider ~ ~ ~ {Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:1000f,Tags:["kill"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000}]}
# Iniciar variables
execute as @s[tag=!ID] run scoreboard players set @s kill_cool 100
#Primero se asigna la araña
execute as @e[tag=!ID,type=slime,tag=kill, sort=nearest,limit=1] at @s run function moose:selectors/tp_kill/set_identifier
execute as @s[tag=!ID] run function moose:selectors/tp_kill/set_identifier

#Tp a la posision correcta
execute as @s[tag=mob1] run function moose:selectors/tp_kill/mob1

execute as @s[tag=mob2] run function moose:selectors/tp_kill/mob2

execute as @s[tag=mob3] run function moose:selectors/tp_kill/mob3

execute as @s[tag=mob4] run function moose:selectors/tp_kill/mob4

execute as @s[tag=mob5] run function moose:selectors/tp_kill/mob5

# a no ser que su araña no exista
execute as @s if entity @e[tag=kill,distance=..3,sort=nearest,limit=1] run scoreboard players set @s kill_cool 100
scoreboard players remove @s kill_cool 1
# Si no encuentra su araña a los 5 segundos muere
execute if score @s kill_cool matches ..0 run function moose:titans/kill

#execute as @s at @s unless entity @e[tag=kill,distance=..5,sort=nearest,limit=1] run function moose:titans/kill