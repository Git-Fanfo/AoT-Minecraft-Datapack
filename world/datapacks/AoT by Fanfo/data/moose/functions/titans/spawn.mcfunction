### EJECUTAR CUANDO SE SPAWNEA UN CERDO

## Si es = 0
# SPAWN TITAN
execute if score titan_c counter matches 0 run function moose:titans/summon/titan_1

#Iniciar scoreboards
scoreboard players add @e[tag=legs,type=slime,sort=nearest,limit=1] atk_cool 0
scoreboard players add @e[tag=feet,type=zombie_villager,sort=nearest,limit=1] rot_cool 0
scoreboard players add @e[tag=neck,sort=nearest,limit=1] smoke_cool 0
scoreboard players set @e[tag=body,sort=nearest,limit=1] idle 0
scoreboard players set @e[tag=body,sort=nearest,limit=1] atk 0
scoreboard players set @e[tag=body,sort=nearest,limit=1] walk 0
scoreboard players set @e[tag=body,sort=nearest,limit=1] mov 0

# Matar cerdo
execute if score titan_c counter matches 0 run tp @s ~ ~-256 ~

# añadir la tag
tag @s add not_titan
# Incrementar scoreboard
scoreboard players add titan_c counter 1
#Reset
execute if score titan_c counter matches 1 run scoreboard players set titan_c counter 0