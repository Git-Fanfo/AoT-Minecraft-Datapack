scoreboard players add segundo time 1
execute if score segundo time matches 20 run function moose:seconds

# Animar TODO
execute as @e[tag=body] at @s store result score @s[distance=0..1] mov run data get entity @e[tag=feet,sort=nearest,limit=1] Motion[0] 10000
#execute as @e[tag=body,tag=!walk] run scoreboard players set @s walk 0
execute as @e[tag=body,scores={mov=1..}] run tag @s add walk
execute as @e[tag=body,scores={mov=..-1}] run tag @s add walk
execute at @a as @e[tag=body,distance=0..40] run function moose:titans/animate
execute as @e[nbt={HurtTime:10s}] at @s run particle minecraft:block minecraft:redstone_block ^ ^1 ^-.45 0 0 0 1 30


# Rotar legs y body
execute as @e[tag=feet,scores={rot_cool=0}] at @s store result entity @e[tag=legs,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
#execute as @e[tag=legs] at @s store result entity @e[tag=body,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
execute as @e[tag=body] at @s store result entity @s Rotation[0] float 1 run data get entity @e[tag=legs,limit=1,sort=nearest] Rotation[0]
#execute as @e[tag=legs] at @s store result entity @e[tag=neck,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
# cooldown de 40
execute as @e[tag=feet, type=minecraft:zombie_villager,scores={rot_cool=0}] at @s run scoreboard players set @s rot_cool 20
scoreboard players remove @e[tag=feet,type=zombie_villager,scores={rot_cool=1..}] rot_cool 1

# Rotar aldeanos
execute as @e[tag=head,type=villager] at @s store result entity @e[tag=body,type=armor_stand,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
tp @e[type=zombie_villager,tag=!titan,tag=!head] ~ -252 ~
#M Matar aldeano
execute as @e[tag=eldian] at @s unless entity @e[tag=head,distance=..2,sort=nearest,limit=1] run particle minecraft:block minecraft:redstone_block ^ ^ ^ 0 0 0 1 20

# evitar entrar en casas
#execute as @e[tag=feet] at @s unless block ^ ^3 ^2.5 air run execute run tp @s ^ ^.3 ^-3
execute as @e[tag=feet] at @s unless block ^ ^3 ^2.5 air run execute run summon creeper ^ ^1.5 ^2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Fuse:0,Tags:["motion"]}
#

# Matar Titan
execute as @a[tag=!armed_1,nbt={SelectedItem:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{blade:1b}}}] run function moose:mech_gear/blades/attack_1
execute as @a[tag=!armed_2,nbt={Inventory:[{Slot:-106b,id:"minecraft:slime_ball",tag:{blade:1b}}]}] run function moose:mech_gear/blades/attack_2

execute as @e[tag=kill, nbt={HurtTime:10s}] at @s if entity @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{odm_gear:1b}}},distance=0..6,scores={man_atk=1..}] run function moose:titans/kill
#execute as @e[tag=body] at @s run tp @e[type=spider,tag=kill, sort=nearest,limit=1] ^ ^3.90 ^-1.5
execute as @e[tag=body] at @s run tp @e[type=spider,tag=kill, sort=nearest,limit=1] ^ ^3.90 ^-1.5 facing entity @s eyes
#execute as @e[tag=legs] at @s store result entity @e[type=spider,tag=kill, sort=nearest,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]

# Atacar al jugador
scoreboard players set @e[tag=legs,type=slime,scores={atk_cool=0}] atk_cool 70
#Debe ser siempre 6
execute as @e[tag=legs,type=slime,scores={atk_cool=1..70}] at @s if entity @a[distance=0..8] run function moose:mob1/attack
scoreboard players remove @e[tag=legs,type=slime,scores={atk_cool=1..}] atk_cool 1
#remover tags ataque
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
#execute as @e[tag=throw,limit=1] at @s run tp @e[tag=3D_1,sort=nearest,limit=1] ^-.3 ^-.2 ^.3
#execute as @e[tag=throw,limit=1] at @s run tp @e[tag=3D_6,sort=nearest,limit=1] ^.3 ^-.2 ^.3
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


