scoreboard players add segundo time 1

#tellraw @p ["",{"text":"Test ticks: "},{"score":{"name":"segundo","objective":"time"}}]

# Periodista
# -1 es cuando es stop
execute if score gameState counter matches 0 run function moose:auxiliar/periodista/start
execute if score gameState counter matches 1 run function moose:auxiliar/periodista/set
execute if score gameState counter matches 4 run execute if score segundo time matches 20 run function moose:auxiliar/periodista/update

execute if score segundo time matches 20 run function moose:seconds

# Animar TODO

execute at @a as @e[tag=body,distance=0..30] run function moose:selectors/body
execute as @e[nbt={HurtTime:10s}] at @s run particle minecraft:block minecraft:redstone_block ^ ^1 ^-.45 0 0 0 1 30
#Titanes
execute as @e[tag=titan] run function moose:selectors/titan 

# Rotar aldeanos
execute as @e[tag=head,type=villager] at @s store result entity @e[tag=body,type=armor_stand,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
tp @e[type=zombie_villager,tag=!titan,tag=!head] ~ -252 ~
#M Matar aldeano
execute as @e[tag=eldian] at @s unless entity @e[tag=head,distance=..2,sort=nearest,limit=1] run particle minecraft:block minecraft:redstone_block ^ ^ ^ 0 0 0 1 20

#Detectar players
execute as @a run function moose:selectors/players_ticks

# Matar Titan
#execute as @a[tag=!armed_1,nbt={SelectedItem:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{blade:1b}}}] run function moose:mech_gear/blades/attack_1
#execute as @a[tag=!armed_2,nbt={Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{blade:1b}}]}] run function moose:mech_gear/blades/attack_2
#execute as @a[tag=wrap] at @s unless entity @e[tag=titan,distance=0..9,limit=1] run tag @s remove wrap
execute as @e[tag=kill] run function moose:selectors/kill

# Disparar proyectiles
execute as @e[tag=motion_1,tag=!motion_added] at @s rotated as @p run function moose:mech_gear/apply_motion/1
execute as @e[tag=rope_1] at @s run tp @s @e[tag=hook_1,sort=nearest,limit=1]

execute as @e[tag=motion_6,tag=!motion_added] at @s rotated as @p run function moose:mech_gear/apply_motion/6
execute as @e[tag=rope_6] at @s run tp @s @e[tag=hook_6,sort=nearest,limit=1]

# Detectar el choque DER
execute as @e[tag=hook_1,tag=!InGround] unless predicate moose:is_riding_snowball at @s run function moose:mech_gear/ground
execute as @e[tag=hook_6,tag=!InGround] unless predicate moose:is_riding_snowball at @s run function moose:mech_gear/ground

# Borrar Lead (?)
kill @e[nbt={Item:{id:"minecraft:lead"}}]


