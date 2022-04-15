# If player
execute as @s[type=player] run function moose:selectors/players_ticks

# If titan
execute as @s[tag=titan] run function moose:selectors/titan 

# If shifter
execute as @s[tag=shifter] run function moose:selectors/shifter 

# Matar titan
execute as @s[tag=kill] run function moose:selectors/kill

# TODO OPTIMIZAR ALDEANO
# Rotar aldeano
execute as @s[tag=head,type=villager] at @s store result entity @e[tag=body,type=armor_stand,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
# Kill unless is a titan or a villager
tp @s[type=zombie_villager,tag=!titan,tag=!head] ~ -252 ~
# Matar aldeano
execute as @s[tag=eldian] at @s unless entity @e[tag=head,distance=..2,sort=nearest,limit=1] run particle minecraft:block minecraft:redstone_block ^ ^ ^ 0 0 0 1 20

# animate hurt
execute as @s[nbt={HurtTime:10s}] at @s run particle minecraft:block minecraft:redstone_block ^ ^1 ^-.45 0 0 0 1 30

# Disparar proyectiles
execute as @s[tag=motion_1,tag=!motion_added] at @s rotated as @p run function moose:mech_gear/apply_motion/1
execute as @s[tag=rope_1] at @s run tp @s @e[tag=hook_1,sort=nearest,limit=1]

execute as @s[tag=motion_6,tag=!motion_added] at @s rotated as @p run function moose:mech_gear/apply_motion/6
execute as @s[tag=rope_6] at @s run tp @s @e[tag=hook_6,sort=nearest,limit=1]

# Detectar el choque DER
execute as @s[tag=hook_1,tag=!InGround] unless predicate moose:is_riding_snowball at @s run function moose:mech_gear/ground
execute as @s[tag=hook_6,tag=!InGround] unless predicate moose:is_riding_snowball at @s run function moose:mech_gear/ground

# Borrar Lead (?)
kill @s[nbt={Item:{id:"minecraft:lead"}}]
