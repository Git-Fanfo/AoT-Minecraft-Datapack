scoreboard players add segundo time 1
execute if score segundo time matches 20 run function moose:seconds

# Animar TODO
execute at @a as @e[tag=body,distance=0..30] run function moose:selectors/body
execute as @e[nbt={HurtTime:10s}] at @s run particle minecraft:block minecraft:redstone_block ^ ^1 ^-.45 0 0 0 1 30

# Rotar aldeanos
execute as @e[tag=head,type=villager] at @s store result entity @e[tag=body,type=armor_stand,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
tp @e[type=zombie_villager,tag=!titan,tag=!head] ~ -252 ~
#M Matar aldeano
execute as @e[tag=eldian] at @s unless entity @e[tag=head,distance=..2,sort=nearest,limit=1] run particle minecraft:block minecraft:redstone_block ^ ^ ^ 0 0 0 1 20

# Matar Titan
execute as @a[tag=!armed_1,nbt={SelectedItem:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{blade:1b}}}] run function moose:mech_gear/blades/attack_1
execute as @a[tag=!armed_2,nbt={Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{blade:1b}}]}] run function moose:mech_gear/blades/attack_2
execute as @e[tag=kill] run function moose:selectors/kill

 
execute as @e[tag=neck] run function moose:selectors/neck
execute as @e[tag=legs] run function moose:selectors/legs
execute as @e[tag=feet] run function moose:selectors/feet

execute as @a[tag=wrap] at @s unless entity @e[tag=titan,distance=0..9,limit=1] run tag @s remove wrap

# Escanear cuando usa una caña
execute as @a[tag=!wrap,scores={man_gear=1..,man_land=0,man_cool=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{odm_gear:1b}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{odm_gear:1b}}]}] at @s run function moose:mech_gear/throw

# Impulsarse
execute as @a[tag=!wrap,scores={man_gear=1..,man_land=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{odm_gear:1b}}}] at @s run function moose:mech_gear/impulse
execute as @a[tag=impulse2] at @s run execute if block ^ ^ ^1 air run tp @s ^ ^.2 ^.8


# Reset escaneo
scoreboard players remove @a[scores={man_gear=1..}] man_gear 1
scoreboard players remove @a[scores={man_cool=1..}] man_cool 1
execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{odm_gear:1b}}}] run scoreboard players set @s man_land 0
execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{odm_gear:1b}}}] run function moose:mech_gear/kill

# Equipar las cuerdas
execute as @a at @a if score @s id_player = @e[tag=3D_1,type=armor_stand,limit=1, sort=nearest] id_3D_1 at @s run tp @e[tag=3D_1,sort=nearest,limit=1] ^-.3 ^-.2 ^.3
execute as @a at @a if score @s id_player = @e[tag=3D_6,type=armor_stand,limit=1, sort=nearest] id_3D_6 at @s run tp @e[tag=3D_6,sort=nearest,limit=1] ^.3 ^-.2 ^.3

# Disparar proyectiles
execute as @e[tag=motion_1,tag=!motion_added] at @s rotated as @p run function moose:mech_gear/apply_motion/1
execute as @e[tag=rope_1] at @s run tp @s @e[tag=hook_1,sort=nearest,limit=1]

execute as @e[tag=motion_6,tag=!motion_added] at @s rotated as @p run function moose:mech_gear/apply_motion/6
execute as @e[tag=rope_6] at @s run tp @s @e[tag=hook_6,sort=nearest,limit=1]

# Detectar el choque DER
execute as @e[type=armor_stand,tag=hook_1,tag=!InGround] unless predicate moose:is_riding_snowball at @s run function moose:mech_gear/ground
execute as @e[type=armor_stand,tag=hook_6,tag=!InGround] unless predicate moose:is_riding_snowball at @s run function moose:mech_gear/ground

# Borrar Lead (?)
kill @e[nbt={Item:{id:"minecraft:lead"}}]


